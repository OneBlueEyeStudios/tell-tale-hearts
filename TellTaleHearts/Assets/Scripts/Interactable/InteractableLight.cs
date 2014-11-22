using UnityEngine;
using System.Collections;

public class InteractableLight : Interactable {



	public float _intensityMin;
	public float _intensityMax;
	public bool _isOn = true;
	public bool _invert;
	bool _canInteract = true;

	Light _light;
	
	// Use this for initialization
	void Start () {
	
		
		_light = GetComponentInChildren<Light> ();
	
		
	}
	
	void OnDisable()
	{
		
		//_windowEvent.stop (STOP_MODE.IMMEDIATE);
		//		_windowEvent.stop();
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}
	
	override public void interact()
	{
		if (_light == null)
						return;

		if (!_canInteract)
			return;

		_canInteract = false;

		if (_isOn)
			turnOff ();
		else
			turnOn ();
	}

	void reloadInteract()
	{
		_canInteract = true;
	}

	IEnumerator tweenLightTo(float targetValue)
	{
		float elapsed = 0;
		float duration = 1;

		float start = _light.intensity;

		while (elapsed < duration) 
		
		{
			float t = elapsed/duration;

			_light.intensity = Mathf.Lerp(start,targetValue,t);

			elapsed += Time.deltaTime;
			yield return null;
		}

	}

	void turnOn ()
	{
		Invoke ("reloadInteract", 1);

		//_animator.Play ("OpenDoor");
		//_animator.SetTrigger ("Open");

		StartCoroutine(tweenLightTo (_intensityMax));

		//_animator.SetTrigger ("open");
		_isOn = true;


	}
	
	void turnOff ()
	{
		
		Invoke ("reloadInteract", 1);

			
		StartCoroutine(tweenLightTo (_intensityMin));

		_isOn = false;
		
		//_windowParameter.setValue (9);
		//_windowEvent.start ();

		
	}

}
