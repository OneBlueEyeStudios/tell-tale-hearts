using UnityEngine;
using System.Collections;
using Fungus;
using FMOD.Studio;

[CommandInfo("Scripting", 
             "FMOD Sound Parameter Set", 
             "FMOD Sound Parameter Set")]
public class SetFMODSoundParameter : Command {

	public string _eventName;
	public string _parameterName;
	public float _parameterValue;


	public override void OnEnter()
	{

		SoundManager._instance.SetParameterForEvent (_eventName, _parameterName, _parameterValue);
		//FMOD_StudioSystem.instance.PlayOneShot (_eventName, _position.position);

		Continue ();
	}
}
