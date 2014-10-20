using UnityEngine;
using System.Collections;
using FMOD;
using FMOD.Studio;

public class FMOD_TestRain : MonoBehaviour {


	EventInstance footstep;
	ParameterInstance surfaceValue;

	// Use this for initialization
	void Start () {
	
		footstep = FMOD_StudioSystem.instance.GetEvent ("event:/footstep");
		footstep.start ();

		footstep.getParameter ("surface", out surfaceValue);


		//FMOD_StudioSystem.instance.PlayOneShot("event:/police", transform.position);

	}
	
	// Update is called once per frame
	void Update () {

		float v = Input.GetAxis ("Vertical");

		surfaceValue.setValue (v);


	}
}
