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
		if(string.IsNullOrEmpty(_parameterName))
			SoundManager._instance.playSoundAtPosition (_eventName, _position,_register,_track, _volume);
		else
			SoundManager._instance.playSoundAtPositionAndParameter (_eventName, _position, _parameterName, _parameterValue,_register,_track, _volume);

		Continue ();
	}
}
