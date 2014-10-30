using UnityEngine;
using System.Collections;

using FMOD;
using FMOD.Studio;

public class FMOD_PropertyTweak : MonoBehaviour {


	public string _eventName;
	public string _propertyName;

	EventInstance _event;
	ParameterInstance _parameterInstance;

	[Range(0,10)]
	public float _parameterValue;


	// Use this for initialization
	void Start () {
		
		
		_event = FMOD_StudioSystem.instance.GetEvent (_eventName);
		
		FMOD.Studio._3D_ATTRIBUTES attributes;
		_event.get3DAttributes (out attributes);
		
		VECTOR v;
		v.x = transform.position.x;
		v.y = transform.position.y;
		v.z = transform.position.z;
		
		attributes.position =  v;
		
		_event.set3DAttributes (attributes);
		
		_event.start ();
		
		_event.getParameter (_propertyName, out _parameterInstance);
		//rain.getParameter ("window", out windowValue);
		/*
		rainFloat = 5;
		windowFloat = 0;
		
		rainValue.setValue (rainFloat);
		windowValue.setValue (windowFloat);
		*/
		
		//SoundManager._instance.registerNewRainSource (this, SoundType.rain);
	}
	
	// Update is called once per frame
	void Update () {

		_parameterInstance.setValue (_parameterValue);
		//_event.getParameter (_propertyName, out _parameterInstance);
	}
}
