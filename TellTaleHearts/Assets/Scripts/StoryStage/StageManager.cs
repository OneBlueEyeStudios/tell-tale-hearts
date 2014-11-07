using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using Fungus;

public delegate void StringDelegate (string eventName);
public delegate void StageStepDelegate (StageStep stageStep);
public delegate void VoidDelegate ();

public class StageManager : MonoBehaviour {

	public event VoidDelegate fungusMerge;
	public event StringDelegate eventTrigger;
	public event StageStepDelegate stageStepEnded;

	public int _nFungusThreads = 2;
	int _nMergedFungusThreads= 0;

	public void fungusReachedMerge ()
	{
		_nMergedFungusThreads++;
		if (_nMergedFungusThreads == _nFungusThreads)
						OnFungusMerge ();
	}

	public void OnFungusMerge()
	{
		_nMergedFungusThreads = 0;
		if (fungusMerge != null)
			fungusMerge ();
	}

	public void OnEventTrigger(string eventName)
	{
		if (eventTrigger != null)
						eventTrigger (eventName);
	}

	public void OnStageStepEnd(StageStep stageStep)
	{
		if (stageStepEnded != null)
			stageStepEnded (stageStep);
	}

	public void OnCopApproach (CopType copType)
	{
		if (copType == CopType.good) 
		{
			OnEventTrigger("GoodCopApproach");
		}
		else 
			if (copType == CopType.bad) 
		{
			
			OnEventTrigger("BadCopApproach");
		}
	}

	public static StageManager _instance;

	public Dictionary<string,int> _globalVars;


	public Vector3 _position;

	bool _currentStepDone;

	public Stage _currentStage;

	int _currentStepIndex;

	public Fungus.FungusScript _goodFungus, _badFungus;

	public void playSequence (CopType copType, string sequenceName)
	{
		if (copType == CopType.good) 
		{

			Fungus.Sequence seq = getSequence(_goodFungus,sequenceName);
			if(seq!=null)
				_goodFungus.ExecuteSequence(seq);
		}
		else 
			if (copType == CopType.bad) 
		{
			
			Fungus.Sequence seq = getSequence(_badFungus,sequenceName);
			if(seq!=null)
				_badFungus.ExecuteSequence(seq);
		}
	}

	Fungus.Sequence getSequence(FungusScript fungus, string sequenceName)
	{
		Fungus.Sequence[] allSequences = fungus.GetComponentsInChildren<Fungus.Sequence> ();

		foreach (Fungus.Sequence seq in allSequences) 
		{
			if(seq.name == sequenceName)
				return seq;
		}

		return null;

	}

	public void setGlobalVar (string globalVar, int value)
	{
		_globalVars [globalVar] = value;
	}

	public void setCurrentStage (Stage newStage)
	{
		_currentStage = newStage;

		
		_currentStepIndex = 0;
	}

	public void toggleVariable(FungusScript fungus, string boolVarName)
	{
		fungus.SetBooleanVariable(boolVarName,!fungus.GetBooleanVariable(boolVarName));
	}

	public void triggerNextStage (FungusScript script)
	{

		if (_globalVars ["CurrentStage"] == 0) {
						_globalVars ["CurrentStage"] = 4;
						_goodFungus.SetBooleanVariable ("SpeakingCop", true);
				} else 
		{
						_globalVars ["CurrentStage"] = _globalVars ["CurrentStage"] + 1;
	
						toggleVariable (_goodFungus, "SpeakingCop");
						toggleVariable (_badFungus, "SpeakingCop");
				}
		_goodFungus.ExecuteSequence (getSequence(_goodFungus, "Decision"));
		_badFungus.ExecuteSequence (getSequence(_badFungus, "Decision"));

	}

	void Awake()
	{
		_globalVars = new Dictionary<string, int> ();
		_globalVars.Add ("CurrentStage",0);
		//_globalVars.Add ("Suspicion",0);
		_instance = this;
	}

	public void currentStepDone (StageStep sender)
	{

		if (!sender._isValid)
			return;

		_currentStepDone = true;

		_currentStepIndex++;

		OnStageStepEnd (sender);

		playStep ();
	}

	void playStep ()
	{
		if(_currentStepIndex < _currentStage._steps.Count)
		_currentStage._steps [_currentStepIndex].execute ();
	}

	// Use this for initialization
	void Start () {
	
		//playStep ();
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
