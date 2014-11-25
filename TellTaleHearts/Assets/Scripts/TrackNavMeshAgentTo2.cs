using UnityEngine;
using System.Collections;

public class TrackNavMeshAgentTo2 : MonoBehaviour {

	NavMeshAgent _navMeshAgent;

	CopType _copType;

	bool _shouldWalk;
	bool _walking;
	
	public bool Walking{ get { return _walking; } set{ GetComponent<Cop>().setWalking(value);}}

	public Transform _targetNode;
	int _pathIndex;

	public void Init(CopType copType, Transform targetNode)
	{
		_copType = copType;
		_targetNode = targetNode;

		//_shouldWalk = true;
		//_navMeshAgent.enabled = false;

		StartCoroutine(MoveCharacterTransform (_targetNode));

	}

	// Use this for initialization
	void Awake () {
		_navMeshAgent = GetComponent<NavMeshAgent> ();
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

	IEnumerator MoveCharacterTransform(Transform node)
	{
		//_navMeshAgent.SetDestination (node.position);
		_navMeshAgent.enabled = false;
		


		setDestination (node);

		yield return null;

		//bool hasArrived = arrived (_navMeshAgent);
		//bool hasArrived = arrived (node,3);

		//while (!hasArrived) {
//		while (!arrived(node.position)) {
//
//			//if(Vector3.Distance(transform.position,node.position) > 3)
//			//{
//				setDestination (node);
//				//_navMeshAgent.SetDestination (node.position + (transform.position - node.position).normalized * 3);
//				yield return null;
//			//}
//			//else
//			//	hasArrived = true;
//			
//		}
//
//		transform.LookAt (node);
//		
//		pathEnd ();
	}

	
	void setDestination (Transform node)
	{



		//StopCoroutine ("setDestinationCoroutine");
		StartCoroutine (setDestinationCoroutine (node));
	}
	
	IEnumerator setDestinationCoroutine (Transform node)
	{
		Walking = true;
		while (!arrived(node.position,2.0f)) {

						NavMeshPath path = new NavMeshPath ();
						NavMesh.CalculatePath (transform.position, node.position, -1, path);


						int index = 0;

//						Vector3 pos = path.corners [index];
//						pos.y = transform.position.y;
//
//						transform.LookAt (pos);
//
//						transform.position += transform.forward * Time.deltaTime;
//
//						yield return null;

						while (index < path.corners.Length  && !arrived(node.position,2.0f)) {
								Vector3 pos = path.corners [index];
								pos.y = transform.position.y;
			
								transform.LookAt (pos);

								/*
								Ray r = new Ray(transform.position,transform.forward);
								RaycastHit hit;
								if(Physics.Raycast(r, out hit,2.0f,LayerMasks.InteractableLayerMask))
								{
									Door door = hit.transform.GetComponent<Door>();
									if(door!=null && door._isClosed)
									{
										door.interact();
										yield return new WaitForSeconds(1);
									}
								}*/
			
								transform.position += transform.forward * Time.deltaTime;
		
			
								if (arrived (pos)) {
										//Debug.Log ("reached index: " + index);
										index++;
								} else {
										//Debug.Log ("Not reached index: " + index);
								}
			
								yield return null;
						}
				}

		//transform.LookAt (node);

		Walking = false;
		pathEnd ();
	}

	void Update()
	{
		if (_shouldWalk) 
		{
			NavMeshPath path = new NavMeshPath();
			NavMesh.CalculatePath (transform.position, _targetNode.position, -1, path);
			

			Vector3 pos =path.corners[_pathIndex];
			pos.y = transform.position.y;
			
			transform.LookAt(pos);
			

			
			transform.position += transform.forward * Time.deltaTime;
			
			
			if(arrived(pos))
			{
				//Debug.Log("reached index: "+_pathIndex);
				_pathIndex++;
			}
			else
			{
				//Debug.Log("Not reached index: "+_pathIndex);
			}
				



			if(_pathIndex >= path.corners.Length)
			{
				_shouldWalk = false;
			}

		}

	}


	void pathEnd ()
	{
		//Debug.LogWarning ("Path end!");
		SequenceTesting._instance.OnPathFinished (_copType);

		Destroy (this);
	}

	
	bool arrived (NavMeshAgent agent)
	{
		float dist = agent.remainingDistance; 
		
		if (dist != Mathf.Infinity && agent.pathStatus == NavMeshPathStatus.PathComplete && agent.remainingDistance <= agent.stoppingDistance) //Arrived.
			return true;
		return false;
	}

}
