using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using Fungus;

public delegate void StringDelegate (string eventName);
public delegate void StageStepDelegate (StageStep stageStep);
public delegate void VoidDelegate ();

[System.Serializable]
public class StageClue
{
	public int _stage;
	public ClueType _type;
}

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
			OnEventTrigger(Constants.GOOD_COP_APPROACH);
		}
		else if (copType == CopType.bad) 
		{
			OnEventTrigger(Constants.BAD_COP_APPROACH);
		}
	}

	public static StageManager _instance;

	// Global vars for the game - Suspicicion and CurrentStage
	public Dictionary<string,int> _globalVars;

	/*
	public Vector3 _position;

	bool _currentStepDone;

	public Stage _currentStage;

	int _currentStepIndex;
*/
	// Reference tot each cop fungus script
	public Fungus.FungusScript _goodFungus, _badFungus;

	// List of clues that the good cop and the bad cop discovered when exploring the house
	public List<StageClue> _stageClue;

	// List of clues that the good cop and the bad cop discovered when exploring the house
	List<ClueType> _goodCopClues, _badCopClues;

	public CopType getCurrentSpeakingCop()
	{
		if (_goodFungus.GetBooleanVariable (Constants.SPEAKING_COP))
			return CopType.good;
		else
			return CopType.bad;
	}

	public bool copKnowsStageClue ()
	{
		CopType currentCop = getCurrentSpeakingCop ();

		ClueType currentStageClue = _stageClue [_globalVars [Constants.CURRENT_STAGE]]._type;

		switch (currentCop) {
		case CopType.bad:
			return _badCopClues.Contains(currentStageClue);
			break;
		case CopType.good:
			return _goodCopClues.Contains(currentStageClue);
			break;
		default:
			break;
		}

		return false;

	}

	public void copDiscoveredClue (CopType cop, ClueType clueType)
	{
		switch (cop) {
		case CopType.bad:
			_badCopClues.Add(clueType);
			break;
		case CopType.good:
			_goodCopClues.Add(clueType);
			break;
		default:
			break;
		}
	}

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
	

	public void incrementGlobalVar (string globalVar, int increment)
	{
		if(!_globalVars.ContainsKey(globalVar))
		{
			Debug.LogError("Global var: "+globalVar+" does not exist");
			return;
		}
		_globalVars [globalVar] += increment;
	}

	public void setGlobalVar (string globalVar, int value)
	{

		if(!_globalVars.ContainsKey(globalVar))
		{
			Debug.LogError("Global var: "+globalVar+" does not exist");
			return;
		}

		_globalVars [globalVar] = value;
	}

	/*
	public void setCurrentStage (Stage newStage)
	{
		_currentStage = newStage;

		
		_currentStepIndex = 0;
	}
	*/

	public void toggleVariable(FungusScript fungus, string boolVarName)
	{
		fungus.SetBooleanVariable(boolVarName,!fungus.GetBooleanVariable(boolVarName));
	}

	public void triggerNextStage (FungusScript script)
	{

		if (_globalVars [Constants.CURRENT_STAGE] == 0) {
			_globalVars [Constants.CURRENT_STAGE] = 4;
						_goodFungus.SetBooleanVariable (Constants.SPEAKING_COP, true);
				} else 
		{
			_globalVars [Constants.CURRENT_STAGE] = _globalVars [Constants.CURRENT_STAGE] + 1;
	
			toggleVariable (_goodFungus, Constants.SPEAKING_COP);
			toggleVariable (_badFungus, Constants.SPEAKING_COP);
				}
		_goodFungus.ExecuteSequence (getSequence(_goodFungus, Constants.DECISION_NODE));
		_badFungus.ExecuteSequence (getSequence(_badFungus, Constants.DECISION_NODE));

	}

	void Awake()
	{
		_globalVars = new Dictionary<string, int> ();
		_globalVars.Add (Constants.CURRENT_STAGE,0);
		_globalVars.Add (Constants.SUSPICION,0);
		_instance = this;
	}

	/*
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
*/
	void OnGUI()
	{
		if (_globalVars.ContainsKey (Constants.SUSPICION))
			GUI.Label (new Rect(0,50,100,100),"Suspicion: " + _globalVars [Constants.SUSPICION]);
	}
}
