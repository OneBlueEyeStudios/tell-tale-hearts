using UnityEngine;
using System.Collections;
using Fungus;
using FMOD.Studio;

[CommandInfo("Scripting", 
             "FMOD Sound", 
             "Play One Shot FMOD Sound")]
public class PlayFMODSound : Command {

	public string _eventName;
	public Transform _position;

	public override void OnEnter()
	{
		FMOD_StudioSystem.instance.PlayOneShot (_eventName, _position.position);

		Continue ();
	}
}
