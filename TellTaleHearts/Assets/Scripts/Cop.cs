using UnityEngine;
using System.Collections;
using FMOD.Studio;
using FMOD;


public class Cop : MonoBehaviour {

	EventInstance footstep;
	ParameterInstance surfaceValue;
	
	float surfaceFloat;

	NavMeshAgent _navMeshAgent;
	
	// Use this for initialization
	void Start () {

		_navMeshAgent = GetComponent<NavMeshAgent> ();

		footstep = FMOD_StudioSystem.instance.GetEvent ("event:/human/footstep - cop1");
		
		FMOD.Studio._3D_ATTRIBUTES attributes;
		footstep.get3DAttributes (out attributes);
		
		VECTOR v;
		v.x = transform.position.x;
		v.y = transform.position.y;
		v.z = transform.position.z;
		
		attributes.position =  v;
		
		footstep.set3DAttributes (attributes);
		
		footstep.start ();
		
		footstep.getParameter ("surface", out surfaceValue);

		surfaceFloat = 0;
		
		surfaceValue.setValue (surfaceFloat);

	}

	
	// Update is called once per frame
	void Update () {


	
	}
}
