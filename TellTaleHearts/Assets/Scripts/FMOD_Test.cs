using UnityEngine;
using System.Collections;
using FMOD;
using FMOD.Studio;

public class FMOD_Test : MonoBehaviour {


	EventInstance rain;
	ParameterInstance rainValue;
	ParameterInstance windowValue;

	float rainFloat, windowFloat;

	// Use this for initialization
	void Start () {
	

		rain = FMOD_StudioSystem.instance.GetEvent ("event:/rain");

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

		rainFloat = 1;
		windowFloat = 0;

		rainValue.setValue (rainFloat);
		windowValue.setValue (windowFloat);

		//FMOD_StudioSystem.instance.PlayOneShot("event:/police", transform.position);

	}
	
	// Update is called once per frame
	void Update () {

		if(Input.GetKeyDown(KeyCode.UpArrow))
		{
			//rainFloat+=1;

			//rainValue.setValue (rainFloat);
			StartCoroutine(changeRainIntensity(1));
		}

		if(Input.GetKeyDown(KeyCode.DownArrow))
		{
			//rainFloat-=1;
			
			//rainValue.setValue (rainFloat);

			StartCoroutine(changeRainIntensity(-1));
		}

		if(Input.GetKeyDown(KeyCode.RightArrow))
		{
			StartCoroutine(openWindow());

			//windowFloat=1;
			
			//windowValue.setValue (windowFloat);
			
		}
		
		if(Input.GetKeyDown(KeyCode.LeftArrow))
		{

			StartCoroutine(closeWindow());

			
		}

		
		//float v = Input.GetAxis ("Vertical");

		//rainValue.setValue (v);


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

	IEnumerator openWindow ()
	{
		while (windowFloat<1) {

			//StartCoroutine(changeRainIntensity(1));

			windowFloat += Time.deltaTime;
			windowValue.setValue (windowFloat);
			yield return null;
				}
	}

	IEnumerator closeWindow ()
	{
		while (windowFloat>0) {
			windowFloat -= Time.deltaTime;
			windowValue.setValue (windowFloat);
			yield return null;
		}
	}
}
