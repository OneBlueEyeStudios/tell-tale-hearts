using UnityEngine;
using System.Collections;
using FMOD.Studio;
using FMOD;

public class RainSoundSource : MonoBehaviour {

	EventInstance rain;
	ParameterInstance rainValue;
	ParameterInstance windowValue;

	float rainFloat, windowFloat;

	// Use this for initialization
	void Start () {
	
		
		rain = FMOD_StudioSystem.instance.GetEvent ("event:/ambience/rain");
		
		FMOD.Studio._3D_ATTRIBUTES attributes;
		rain.get3DAttributes (out attributes);
		
		VECTOR v;
		v.x = transform.position.x;
		v.y = transform.position.y;
		v.z = transform.position.z;
		
		attributes.position =  v;
		
		rain.set3DAttributes (attributes);
		
		rain.start ();
		
		rain.getParameter ("intensity", out rainValue);
		rain.getParameter ("window", out windowValue);
		
		rainFloat = 5;
		windowFloat = 0;
		
		rainValue.setValue (rainFloat);
		windowValue.setValue (windowFloat);
		
		SoundManager._instance.registerNewRainSource (this, SoundType.rain);
	}

	public void setRainIntensity(float value)
	{
		StartCoroutine (changeRainIntensity (value));
	}
	
	IEnumerator changeRainIntensity (float value)
	{
		float initialValue;
		rainValue.getValue(out initialValue);
		float finalValue = initialValue + value;
		
		float duration = 1f;
		float step = value/duration;
		float elapsed = 0.0f;
		
		while (elapsed<duration) {
			
			rainFloat = Mathf.Lerp(initialValue,finalValue,elapsed/duration);
			
			rainValue.setValue(rainFloat);
			
			elapsed+=Time.deltaTime;
			
			yield return null;
		}
	}

	
	
	public IEnumerator openWindow ()
	{

		//windowValue.setValue (1);
		yield return null;

		while (windowFloat<1) {
			
			//StartCoroutine(changeRainIntensity(1));
			
			windowFloat += Time.deltaTime*2;
			windowValue.setValue (windowFloat);
			yield return null;
		}

	}
	
	public IEnumerator closeWindow ()
	{
		//windowValue.setValue (9);
		yield return null;

		while (windowFloat>0) {
			windowFloat -= Time.deltaTime*0.8f;
			windowValue.setValue (windowFloat);
			yield return null;
		}

	}

	// Update is called once per frame
	void Update () {
	
	}
}
