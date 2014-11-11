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
	public bool _hasClue;
	public ClueType _type;
	public Transform _mainRoom;
	public Transform _secondaryRoom;
	public CopType _speakingCop;

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
		/*if (_goodFungus.GetBooleanVariable (Constants.SPEAKING_COP))
			return CopType.good;
		else
			return CopType.bad;*/

		StageClue stage = getCurrentStage ();

		return stage._speakingCop;
	}

	ClueType getClueType(int stage, out bool hasClue)
	{
		foreach (StageClue stageClue in _stageClue) 
		{
			if(stageClue._stage == stage)
			{
				hasClue = stageClue._hasClue;
				return stageClue._type;
			}
		}

		Debug.LogError ("Could not find clue for Stage: " + stage);
		hasClue = false;
		return ClueType.OperaTicket;
	}

	public Transform getRoomForCurrentStage ()
	{
		int currentStage = _globalVars [Constants.CURRENT_STAGE];

		foreach (StageClue stageClue in _stageClue) 
		{
			if(stageClue._stage == currentStage)
			{
				return stageClue._mainRoom;
			}
		}

		return null;
	}

	public Transform getSecondaryRoomForCurrentStage ()
	{
		int currentStage = _globalVars [Constants.CURRENT_STAGE];
		
		foreach (StageClue stageClue in _stageClue) 
		{
			if(stageClue._stage == currentStage)
			{
				return stageClue._secondaryRoom;
			}
		}
		
		return null;
	}

	public bool copKnowsStageClue ()
	{
		if (_globalVars [Constants.CURRENT_STAGE] < 3)
			return true;

		CopType currentCop = getCurrentSpeakingCop ();

		bool hasClue = false;
		ClueType currentStageClue = getClueType (_globalVars [Constants.CURRENT_STAGE],out hasClue);//_stageClue []._type;

		if (!hasClue)
			return true;

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

	StageClue getCurrentStage ()
	{
		int currentStage = _globalVars [Constants.CURRENT_STAGE];
	
		//Debug.LogWarning ("CurrentStage: " + currentStage);

		foreach (StageClue stageClue in _stageClue) 
		{
			if(stageClue._stage == currentStage)
			{
				return stageClue;
			}
		}

		return null;
	}

	public void triggerNextStage (FungusScript script)
	{

		OnEventTrigger (Constants.STAGE_FINISH_TRIGGER);

		//if (_globalVars [Constants.CURRENT_STAGE] == 0) {
		//	_globalVars [Constants.CURRENT_STAGE] = 3;
		//				_badFungus.SetBooleanVariable (Constants.SPEAKING_COP, true);
		//		} else 
		{

			Debug.LogError ("CurrentStage: " + _globalVars [Constants.CURRENT_STAGE]);
			_globalVars [Constants.CURRENT_STAGE] = _globalVars [Constants.CURRENT_STAGE] + 1;
			Debug.LogError ("CurrentStage: " + _globalVars [Constants.CURRENT_STAGE]);

			StageClue stage = getCurrentStage ();

			if(stage._speakingCop == CopType.bad)
			{
				_badFungus.SetBooleanVariable (Constants.SPEAKING_COP, true);
				_goodFungus.SetBooleanVariable (Constants.SPEAKING_COP, false);
			}
			else
			{
				_badFungus.SetBooleanVariable (Constants.SPEAKING_COP, false);
				_goodFungus.SetBooleanVariable (Constants.SPEAKING_COP, true);
			}

	
	
			//toggleVariable (_goodFungus, Constants.SPEAKING_COP);
			//toggleVariable (_badFungus, Constants.SPEAKING_COP);
				}
		_goodFungus.ExecuteSequence (getSequence(_goodFungus, Constants.DECISION_NODE));
		_badFungus.ExecuteSequence (getSequence(_badFungus, Constants.DECISION_NODE));

	}

	void Awake()
	{
		_badCopClues = new List<ClueType>();
		_goodCopClues = new List<ClueType>();

		_globalVars = new Dictionary<string, int> ();
		_globalVars.Add (Constants.CURRENT_STAGE,2);
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
