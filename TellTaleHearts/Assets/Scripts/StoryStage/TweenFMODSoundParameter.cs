using UnityEngine;
using System.Collections;
using Fungus;
using FMOD.Studio;

[CommandInfo("Scripting", 
             "FMOD Sound Parameter Tween", 
             "FMOD Sound Parameter Tween")]
public class TweenFMODSoundParameter : Command {

	public string _eventName;
	public string _parameterName;
	public AnimationCurve _curve;
	public float _duration;

	IEnumerator tweenEvent ()
	{
		float elapsed = 0;

		while (elapsed < _duration) 
		{
			float t = elapsed/_duration;
		
			float evaluate = _curve.Evaluate(t);

			Debug.LogWarning("Evaluate:"+evaluate);

			SoundManager._instance.SetParameterForEvent (_eventName, _parameterName, evaluate);

			elapsed += Time.deltaTime;

			yield return null;
		}
		//for(int i = 0;
	}

	//public float _parameterValue;


	public override void OnEnter()
	{

		//SoundManager._instance.SetParameterForEvent (_eventName, _parameterName, _parameterValue);
		//FMOD_StudioSystem.instance.PlayOneShot (_eventName, _position.position);

		StartCoroutine (tweenEvent());


		Continue ();
	}
}
