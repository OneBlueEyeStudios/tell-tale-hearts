using UnityEngine;
using System.Collections;
using FMOD.Studio;
using FMOD;


public class Cop : MonoBehaviour {
	

	public Animator _animator;

	NavMeshAgent _navMeshAgent;

	int _speedFloat = Animator.StringToHash("Speed");
	
	// Use this for initialization
	void Start () {

		_navMeshAgent = GetComponent<NavMeshAgent> ();

		//_animator = GetComponent<Animator> ();

	}

	
	// Update is called once per frame
	void Update () {



		_animator.SetFloat (_speedFloat, Vector3.SqrMagnitude(_navMeshAgent.velocity));

		//surfaceFloat = Mathf.Lerp(surfaceFloat,4,Time.deltaTime * 0.1f);

		//UnityEngine.Debug.LogWarning ("surfaceFloat: " + surfaceFloat);

		//footstep.setParameterValue ("surface", surfaceFloat);
	}
}
