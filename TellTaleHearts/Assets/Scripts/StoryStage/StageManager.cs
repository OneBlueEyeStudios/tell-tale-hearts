using UnityEngine;
using System.Collections;

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

	public static StageManager _instance;



	public Vector3 _position;

	bool _currentStepDone;

	public Stage _currentStage;

	int _currentStepIndex;

	public void setCurrentStage (Stage newStage)
	{
		_currentStage = newStage;

		
		_currentStepIndex = 0;
	}

	void Awake()
	{
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
