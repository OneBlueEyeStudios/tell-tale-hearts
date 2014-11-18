using UnityEngine;
using System.Collections;
using FMOD.Studio;
using FMOD;

public class FootstepSound : MonoBehaviour {


	NavMeshAgent _navAgent;

	EventInstance footstep;
	ParameterInstance surfaceValue;

	public string _eventName;
	public float surfaceFloat;
	public float _volume;

	// Use this for initialization
	void Start () {

		_navAgent = GetComponent<NavMeshAgent> ();

		footstep = FMOD_StudioSystem.instance.GetEvent (_eventName);

		
		var attributes = FMOD.Studio.UnityUtil.to3DAttributes(transform.position);
		
		footstep.set3DAttributes (attributes);

		
		footstep.getParameter ("surface", out surfaceValue);
		

		footstep.start ();
	
	}
	
	// Update is called once per frame
	void Update () {

		//float v = Input.GetAxis ("Vertical");


		if (Vector3.SqrMagnitude (_navAgent.velocity) > 1)
			surfaceFloat = 1.5f;
		else
			surfaceFloat = 0f;

		if (footstep != null) {
						footstep.set3DAttributes (FMOD.Studio.UnityUtil.to3DAttributes (transform.position));

						surfaceValue.setValue (surfaceFloat);
		
		
						surfaceValue.setValue (surfaceFloat);
				}
	}
}
