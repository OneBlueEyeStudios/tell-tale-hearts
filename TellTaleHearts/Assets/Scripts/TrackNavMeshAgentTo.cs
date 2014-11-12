using UnityEngine;
using System.Collections;

public class TrackNavMeshAgentTo : MonoBehaviour {

	NavMeshAgent _navMeshAgent;

	CopType _copType;


	public Transform _targetNode;

	public void Init(CopType copType, Transform targetNode)
	{
		_copType = copType;
		_targetNode = targetNode;

		StartCoroutine(MoveCharacterTransform (_targetNode));

	}

	// Use this for initialization
	void Awake () {
		_navMeshAgent = GetComponent<NavMeshAgent> ();
	}
	
	IEnumerator MoveCharacterTransform(Transform node)
	{
		
		
		_navMeshAgent.SetDestination (node.position);
		
		yield return null;
		
		while (!arrived(_navMeshAgent)) {
			
			_navMeshAgent.SetDestination (node.position + (transform.position - node.position).normalized * 3);
			
			yield return null;
			
		}
		
		pathEnd ();
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
