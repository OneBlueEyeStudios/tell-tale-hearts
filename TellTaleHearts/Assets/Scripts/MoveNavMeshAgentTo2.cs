using UnityEngine;
using System.Collections;

public class MoveNavMeshAgentTo2 : MonoBehaviour {

	NavMeshAgent _navMeshAgent;

	bool _stopLoopMovement;

	CopType _copType;

	public bool _shouldLoop;
	public bool _useChildren;
	bool _walking;

	public bool Walking{ get { return _walking; } set{ GetComponent<Cop>().setWalking(value);}}


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

		int index = 0;

		while (index < parentnode.childCount) {
			Transform current = parentnode.GetChild (index);

			yield return StartCoroutine (MoveCharacterCoroutine (current, true));

			//if(current.childCount>0)
			//{
			//	transform.LookAt(current.GetChild(0));
			//}

			yield return new WaitForSeconds (waitTimePerNode);

			
			index++;

//			Debug.LogWarning("Index:" +index);
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
				
				index++;
			}
		}
		
		_stopLoopMovement = false;

		
		StageManager._instance.eventTrigger -= eventTrigger;
		
		
		
		
		pathEnd ();
	} 

	void setDestination (Transform node)
	{
		NavMeshPath path = new NavMeshPath();
		NavMesh.CalculatePath (transform.position, node.position, -1, path);

		StartCoroutine (setDestinationCoroutine (path));
	}

	IEnumerator setDestinationCoroutine (NavMeshPath path)
	{
//		foreach (Vector3 vec in path.corners) 
//		{
//			GameObject go = GameObject.CreatePrimitive(PrimitiveType.Sphere);
//			go.transform.position = vec;
//			go.name = "node";
//			go.collider.enabled = false;
//		}
//
		Walking = false;
		int index = 0;
		while (index < path.corners.Length) 
		{
			Vector3 pos =path.corners[index];
			pos.y = transform.position.y;

			transform.LookAt(pos);


			Ray r = new Ray(transform.position,transform.forward);
			RaycastHit hit;
			if(Physics.Raycast(r, out hit,2.0f,LayerMasks.InteractableLayerMask))
			{
				Door door = hit.transform.GetComponent<Door>();
				if(door!=null && door._isClosed)
				{
					door.interact();
					Walking = false;
					yield return new WaitForSeconds(1);
					Walking = true;
				}
			}

			Walking = true;
			transform.position += transform.forward * Time.deltaTime;

			if(arrived(pos))
			{
//				Debug.Log("reached index: "+index);
				index++;
			}
			else
			{
//				Debug.Log("Not reached index: "+index);
			}

			yield return null;
		}
		Walking = false;
	}

	bool arrived(Vector3 target, float distanceThreshold = 0.1f)
	{
		target.y = transform.position.y;

		//Debug.Log ("Vector3.Distance (target, transform.position):" + Vector3.Distance (target, transform.position));

		if (Vector3.Distance (target, transform.position) < distanceThreshold)
			return true;
		return false;
	}

	bool arrived(Transform target)
	{
		return arrived (target.position);
	}

	IEnumerator MoveCharacterCoroutine (Transform target, bool multiPath = false)
	{
		_navMeshAgent.enabled = false;

		NavMeshPath path = new NavMeshPath();
		NavMesh.CalculatePath (transform.position, target.position, -1, path);

		setDestination (target);

		//_navMeshAgent.SetDestination (target.position);

		yield return null;


		while (!arrived(target)) {
			
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
		
		if (eventName.Equals (Constants.STAGE_FINISH_TRIGGER)) {

			pathEnd ();

		}
		
	}

	void pathEnd ()
	{
		//Debug.LogWarning ("Path end!");
		SequenceTesting._instance.OnPathFinished (_copType);

		Destroy (this);
	}

}
