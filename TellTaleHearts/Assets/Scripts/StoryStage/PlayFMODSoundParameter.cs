using UnityEngine;
using System.Collections;
using Fungus;

[CommandInfo("Scripting", 
             "FMOD Sound (Parameter)", 
             "Play  FMOD Sound with parameters")]
public class PlayFMODSoundParameter : Command {

	public string _eventName;
	public string _parameterName;
	public float _parameterValue;
	public Transform _position;
	public bool _register;
	public bool _track;
	public float _volume = 1;

	public override void OnEnter()
	{
		SoundManager._instance.playSoundAtPositionAndParameter (_eventName, _position, _parameterName, _parameterValue,_register,_track, _volume);

		Continue ();
	}
}
