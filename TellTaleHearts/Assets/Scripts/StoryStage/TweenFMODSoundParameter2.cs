using UnityEngine;
using System.Collections;
using Fungus;
using FMOD.Studio;

[CommandInfo("Scripting", 
             "FMOD Sound Parameter Tween2", 
             "FMOD Sound Parameter Tween2")]
public class TweenFMODSoundParameter2 : Command {

	public string _eventName;
	public string _parameterName;
	public float _duration;
	public float _initialValue;
	public float _targetValue;


	public override void OnEnter()
	{

		Debug.LogWarning ("TweenFMODSoundParameter2");

		SoundManager._instance.TweenParameter (_eventName, _parameterName, _duration, _initialValue, _targetValue);

		Invoke ("Continue",_duration);

	}

}
