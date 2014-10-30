using UnityEngine;
using System.Collections;

public class NavMeshTesting : MonoBehaviour {

	NavMeshAgent _navMeshAgent;

	public GameObject _target;

	// Use this for initialization
	void Start () {
		_navMeshAgent = GetComponent<NavMeshAgent> ();
	}
	
	// Update is called once per frame
	void Update () {


		//Debug.LogWarning (_navMeshAgent.velocity);

	}
}
