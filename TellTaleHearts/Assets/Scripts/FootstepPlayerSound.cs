using UnityEngine;
using System.Collections;
using FMOD.Studio;
using FMOD;

public class FootstepPlayerSound : MonoBehaviour {




	EventInstance footstep;
	ParameterInstance surfaceValue;

	public string _eventName;
	public float surfaceFloat;
	public float _volume;

	// Use this for initialization
	void Start () {


		footstep = FMOD_StudioSystem.instance.GetEvent (_eventName);

		
		var attributes = FMOD.Studio.UnityUtil.to3DAttributes(transform.position);
		
		footstep.set3DAttributes (attributes);

		
		footstep.getParameter ("surface", out surfaceValue);
		

		footstep.start ();
	
	}
	
	// Update is called once per frame
	void Update () {

		float v = Input.GetAxis ("Vertical");
		float h = Input.GetAxis ("Horizontal");


		if(v>0.1f || h>0.1f)
						surfaceFloat = 2.5f;
		else
			surfaceFloat = 0f;

		if (footstep != null) {
						footstep.setVolume (_volume);

						footstep.set3DAttributes (FMOD.Studio.UnityUtil.to3DAttributes (transform.position));

						surfaceValue.setValue (surfaceFloat);
				}
	
	}
}
