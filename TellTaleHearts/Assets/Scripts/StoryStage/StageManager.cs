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

	// Reference to the Cops GameObjects
	public GameObject _goodCop, _badCop, _frontDoor;

	// Reference tot each cop fungus script
	public Fungus.FungusScript _goodCopFungus, _badCopFungus, _arrestFungus, _confessFungus, _escapeFungus;

	// List of clues that the good cop and the bad cop discovered when exploring the house
	public List<StageClue> _stageClue;

	// List of clues that the good cop and the bad cop discovered when exploring the house
	List<ClueType> _goodCopClues, _badCopClues;

	public int _lastLevel = 8;
	public int _suspicionThreshold = 5;

	public Trail _trail;
	public GameObject _pathRendererPrefab;
	public NavMeshAgent _pathRenderer;

	public bool getCurrentSpeakingCop(out CopType type)
	{
		
		
		/*if (_goodFungus.GetBooleanVariable (Constants.SPEAKING_COP))
			return CopType.good;
		else
			return CopType.bad;*/
		
		StageClue stage = getCurrentStage ();
		if (stage == null) {
			type = CopType.bad;
				return false;
				}
			//return CopType.bad;

		type = stage._speakingCop;
		return true;
		//return stage._speakingCop;
	}


	public int getSuspicionLevel()
	{
		return _globalVars [Constants.SUSPICION];

	}
	public CopType getCurrentSpeakingCop()
	{


		/*if (_goodFungus.GetBooleanVariable (Constants.SPEAKING_COP))
			return CopType.good;
		else
			return CopType.bad;*/

		StageClue stage = getCurrentStage ();
		if (stage == null)
			return CopType.bad;

		return stage._speakingCop;
	}

	public void clearTrail ()
	{
		//_pathRenderer.GetComponent<TrailRenderer> ().time = 1f;
	//	Destroy (_pathRenderer.gameObject);
	}

	public void DrawPlayerPath(Transform start, Transform end, CopType type)
	{
		GameObject go = Instantiate(_pathRendererPrefab,start.position + start.forward*2f,Quaternion.identity) as GameObject;
		_trail = go.GetComponent<Trail> ();		
		_trail.DrawPlayerPath (start, end, type);
	}

	/*
	public void DrawPlayerPath(Transform start, Transform end)
	{
		StartCoroutine (DrawPlayerPathCoroutine (start, end));

	}

	IEnumerator DrawPlayerPathCoroutine (Transform start, Transform end)
	{
		//while (true) 
		{
			NavMeshPath path = new NavMeshPath();
			bool theresPath = NavMesh.CalculatePath(start.position,end.position,-1,path);

			Debug.LogWarning(theresPath+"  path:"+path.corners.Length);

			if(_pathRenderer != null)
				Destroy(_pathRenderer.gameObject);

			GameObject go = Instantiate(_pathRendererPrefab,start.position + start.forward*2f,Quaternion.identity) as GameObject;
			_pathRenderer = go.GetComponent<NavMeshAgent>();

			//_pathRenderer.GetComponent<TrailRenderer> ().time = -1f;
			//_pathRenderer.transform.position = start.position;

			yield return new WaitForSeconds(1);
			_pathRenderer.SetDestination (end.position);

			iTween.FadeTo(_pathRenderer.gameObject.transform.FindChild("Quad").gameObject,0,5f);
//			LineRenderer lineRenderer = _pathRenderer.GetComponentInChildren<LineRenderer> ();
//			lineRenderer.SetVertexCount(path.corners.Length);
//			int index = 0;
//			foreach(Vector3 pos in path.corners)
//			{
//				Debug.LogWarning("Set pos");
//
//				lineRenderer.SetPosition(index,pos);
//				index++;
//			}
//
			//_pathRenderer.GetComponentInChildren<TrailRenderer> ().time = 100f;
			_pathRenderer.GetComponentInChildren<TrailRenderer> ().enabled = true;
		
			//yield return new WaitForSeconds(10);
			yield return null;

			while(!arrived(_pathRenderer))
			{
				yield return null;
			}

			//Destroy(_pathRenderer.gameObject.transform.FindChild("Quad").gameObject);


		}
	}
	*/

	bool arrived (NavMeshAgent agent)
	{
		float dist = agent.remainingDistance; 
		
		//		Debug.LogWarning ("agent.remainingDistance:" + agent.remainingDistance);
		
		if (dist != Mathf.Infinity && agent.pathStatus == NavMeshPathStatus.PathComplete && agent.remainingDistance <= agent.stoppingDistance) //Arrived.
			return true;
		return false;
	}

	IEnumerator parentTrailWhenDone ()
	{
		while (!arrived( _pathRenderer)) 
		{
			yield return null;
		}

		_pathRenderer.transform.parent = CharView._instance.transform;
		_pathRenderer.transform.position = Vector3.zero;
	}

//	public void DrawPlayerPath2(Vector3 start, Vector3 end)
//	{
//		NavMeshPath path = new NavMeshPath();
//		NavMesh.CalculatePath (start, end, -1, path);
//
//		_lineRenderer.SetVertexCount (path.corners.Length);
//
//		int count = 0;
//		foreach (Vector3 pos in path.corners) 
//		{
//			_lineRenderer.SetPosition(count,pos);
//			count++;
//		}
//
//	}

	public Transform getDoorPos ()
	{

		return _frontDoor.transform;
	}
	public Transform getSpeakingCopPos ()
	{
		CopType type = getCurrentSpeakingCop ();

		switch (type) {
		case CopType.bad:
			return _badCop.transform;
			break;
		case CopType.good:
			return _goodCop.transform;
			break;

		default:
				break;
				}

		return null;
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
			if(!_badCopClues.Contains(clueType))
			_badCopClues.Add(clueType);
			break;
		case CopType.good:
			if(!_goodCopClues.Contains(clueType))
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
			Fungus.Sequence seq = getSequence(_goodCopFungus,sequenceName);
			if(seq!=null)
				_goodCopFungus.ExecuteSequence(seq);
		}
		else 
			if (copType == CopType.bad) 
		{
			
			Fungus.Sequence seq = getSequence(_badCopFungus,sequenceName);
			if(seq!=null)
				_badCopFungus.ExecuteSequence(seq);
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


		//if (_globalVars [Constants.SUSPICION] >= 3)
		if (_globalVars [Constants.SUSPICION] >= _suspicionThreshold) 
		{
			_arrestFungus.Execute ();
			SoundManager._instance.increaseSuspicionParam("theme");
		}
				//else if (_globalVars [Constants.CURRENT_STAGE] >= 7)
		else if (_globalVars [Constants.CURRENT_STAGE] >= _lastLevel)
						_escapeFungus.Execute ();
		//if (_globalVars [Constants.CURRENT_STAGE] == 0) {
		//	_globalVars [Constants.CURRENT_STAGE] = 3;
		//				_badFungus.SetBooleanVariable (Constants.SPEAKING_COP, true);
		//		} else 
		else {

			//Debug.LogError ("CurrentStage: " + _globalVars [Constants.CURRENT_STAGE]);
			_globalVars [Constants.CURRENT_STAGE] = _globalVars [Constants.CURRENT_STAGE] + 1;
			//Debug.LogError ("CurrentStage: " + _globalVars [Constants.CURRENT_STAGE]);

			StageClue stage = getCurrentStage ();

			if(stage._speakingCop == CopType.bad)
			{
				_badCopFungus.SetBooleanVariable (Constants.SPEAKING_COP, true);
				_goodCopFungus.SetBooleanVariable (Constants.SPEAKING_COP, false);
			}
			else
			{
				_badCopFungus.SetBooleanVariable (Constants.SPEAKING_COP, false);
				_goodCopFungus.SetBooleanVariable (Constants.SPEAKING_COP, true);
			}

	
			_goodCopFungus.ExecuteSequence (getSequence(_goodCopFungus, Constants.DECISION_NODE));
			_badCopFungus.ExecuteSequence (getSequence(_badCopFungus, Constants.DECISION_NODE));

				}


	}

	public void confessChosen ()
	{
		_confessFungus.Execute ();
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

	public void doubtChanged(int doubt)
	{
		SoundManager._instance.setDoubtLevel (doubt);
	}

	public void disableAllCameraEffects ()
	{
		_globalVars [Constants.SUSPICION] = 0;
	}

	void Start()
	{
		//DrawPlayerPath2(CharView._instance.transform.position, _goodCop.transform.position);
		//DrawPlayerPath (CharView._instance.transform.position, _goodCop.transform.position);
	}

	void Update()
	{
		ImageEffectsHandler handler = (ImageEffectsHandler)GetComponent ("ImageEffectsHandler");
		handler.UpdateSuspicion (_globalVars [Constants.SUSPICION]);

		ImageEffectsHandlerC handlerC = GetComponent<ImageEffectsHandlerC> ();
		handlerC.UpdateSuspicion(_globalVars [Constants.SUSPICION]);

		SoundManager._instance.setSuspicionLevel (_globalVars [Constants.SUSPICION]);

		//SoundManager._instance.setSuspicionLevel (StageManager._instance._globalVars [Constants.SUSPICION]);
	}

	void OnGUI()
	{
		//if (_globalVars.ContainsKey (Constants.SUSPICION))
		//	GUI.Label (new Rect(0,50,100,100),"Suspicion: " + _globalVars [Constants.SUSPICION]);
	}
}
