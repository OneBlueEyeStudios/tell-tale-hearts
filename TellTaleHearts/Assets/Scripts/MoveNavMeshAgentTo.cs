using UnityEngine;
using System.Collections;

public class MoveNavMeshAgentTo : MonoBehaviour {

	NavMeshAgent _navMeshAgent;

	bool _stopLoopMovement;

	CopType _copType;

	public bool _shouldLoop;
	public bool _useChildren;
	//public bool _shouldRandom;

	public Transform _targetNode;

	int _waitTimePerNode;

	public void Init(CopType copType, Transform targetNode, bool useChildren, bool loop, int waitTimePerNode)
	{
		_copType = copType;
		_targetNode = targetNode;
		_shouldLoop = loop;
		_waitTimePerNode = waitTimePerNode;
		_useChildren = useChildren;

		MoveNavMeshAgent (_targetNode, _waitTimePerNode, _shouldLoop);

	}

	// Use this for initialization
	void Awake () {
		_navMeshAgent = GetComponent<NavMeshAgent> ();
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	bool arrived (NavMeshAgent agent)
	{
		float dist = agent.remainingDistance; 

		if (dist != Mathf.Infinity && agent.pathStatus == NavMeshPathStatus.PathComplete && agent.remainingDistance <= agent.stoppingDistance) //Arrived.
			return true;
		return false;
	}

	public void MoveNavMeshAgent(Transform parentNode,  int waitTimePerNode, bool loop = false)
	{
		if(!_useChildren)
			StartCoroutine (MoveCharacterCoroutine (parentNode));
		else if (!loop)
			StartCoroutine (MoveCharacterListCoroutine (parentNode, waitTimePerNode));
		else {
			StartCoroutine (MoveCharacterListCoroutineLoop (parentNode, waitTimePerNode));
		}
	}

	
	public IEnumerator MoveCharacterListCoroutine (Transform parentnode, int waitTimePerNode)
	{
		//Debug.LogWarning ("MoveCharacterListCoroutineLoop Start!");

		int index = 0;

		while (index < parentnode.childCount) {
			Transform current = parentnode.GetChild (index);
			yield return StartCoroutine (MoveCharacterCoroutine (current, true));


			//Debug.LogWarning ("Wait!");
			yield return new WaitForSeconds (waitTimePerNode);

			/*
			ClueReference clueRef = parentnode.GetChild (index).GetComponent<ClueReference> ();
			if (clueRef != null) {
				if (clueRef._reference._available) {
					Debug.LogWarning ("Cop learned about: " + clueRef._reference._clueType);
					StageManager._instance.copDiscoveredClue (_copType, clueRef._reference._clueType);
				}
			}
			*/
			
			index++;
		}
		
		pathEnd ();
	}
	
	public IEnumerator MoveCharacterListCoroutineLoop (Transform parentnode, int waitTimePerNode)
	{



		while (_stopLoopMovement) {
			yield return null;
		}

		_stopLoopMovement = false;
		
		StageManager._instance.eventTrigger += eventTrigger;

		
		while (!_stopLoopMovement) {
			
			int index = 0;
			while (index < parentnode.childCount && !_stopLoopMovement) {
				Transform current = parentnode.GetChild (index);
				yield return StartCoroutine (MoveCharacterCoroutine (current, true));
				
				yield return new WaitForSeconds (waitTimePerNode);
				/*
				ClueReference clueRef = parentnode.GetChild (index).GetComponent<ClueReference> ();
				if (clueRef != null) {
					if (clueRef._reference._available) {
						Debug.LogWarning ("Cop learned about: " + clueRef._reference._clueType);
						StageManager._instance.copDiscoveredClue (_copType, clueRef._reference._clueType);
					}
				}
				*/
				
				index++;
			}
		}
		
		_stopLoopMovement = false;

		
		StageManager._instance.eventTrigger -= eventTrigger;
		
		
		
		
		pathEnd ();
	}

	
	IEnumerator MoveCharacterCoroutine (Transform target, bool multiPath = false)
	{

		_navMeshAgent.SetDestination (target.position);

		yield return null;
		
		while (!arrived(_navMeshAgent)) {
			
			yield return null;
			
		}

		ClueReference clueRef = target.GetComponent<ClueReference> ();
		if (clueRef != null) {
			if (clueRef._reference._available) {
				Debug.LogWarning ("Cop learned about: " + clueRef._reference._clueType);
				StageManager._instance.copDiscoveredClue (_copType, clueRef._reference._clueType);
			}
		}

		if (!multiPath)
			pathEnd ();
	}

	void eventTrigger (string eventName)
	{
		//Debug.LogWarning ("eventName trigger: " + eventName);
		
		if (eventName.Equals (Constants.STAGE_FINISH_TRIGGER)) {
		//	Debug.LogWarning ("Stop LOOP MOVEMENT");

			pathEnd ();

			//_stopLoopMovement = true;
		}
		
	}

	void pathEnd ()
	{
		//Debug.LogWarning ("Path end!");
		SequenceTesting._instance.OnPathFinished (_copType);

		Destroy (this);
	}

}
