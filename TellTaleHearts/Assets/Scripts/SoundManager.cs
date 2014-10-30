using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using FMOD;
using FMOD.Studio;

public enum SoundType {rain}

public class FMODEvent
{
	public EventInstance _event;
	public SoundType _type;

	public FMODEvent(EventInstance e, SoundType t)
	{
		_event = e;
		_type = t;
	}
}

public class SoundManager : MonoBehaviour {

	public static SoundManager _instance;

	void Awake()
	{
		_instance = this;
		_rainEvents = new List<RainSoundSource> ();
		_currentRainIntensity = 0;
	}

	public List<RainSoundSource> _rainEvents;

	public AudioClip[] _dialogueDB;

	public float _currentRainIntensity;

	public float playDialogue(string tag)
	{
		UnityEngine.Debug.LogWarning ("Play: " + tag);

		AudioClip clip = getClipFor (tag);

		if (clip == null)
						return 0;

		AudioSource.PlayClipAtPoint (clip,Vector3.zero);

		return clip.length;
	}

	AudioClip getClipFor (string tag)
	{
		foreach (AudioClip clip in _dialogueDB) 
		{
			if(tag.Equals(clip.name))
				return clip;
		}
		return null;
	}

	public void registerNewRainSource (RainSoundSource ev, SoundType type)
	{
		_rainEvents.Add (ev);
	}

	public void setRainIntensity(float v)
	{
		foreach (RainSoundSource source in _rainEvents) 
		{
			source.setRainIntensity(v);
		}
	}

	public void playSoundAtPositionAndParameter(string eventName, Vector3 position, string parameterName, float value)
	{


		EventInstance fmodEvent = FMOD_StudioSystem.instance.GetEvent (eventName);
		ParameterInstance fmodParameter;

		RESULT result = fmodEvent.getParameter (parameterName, out fmodParameter);




		//fmodEvent = FMOD_StudioSystem.instance.GetEvent ("event:/household/stove");
	
		var attributes = FMOD.Studio.UnityUtil.to3DAttributes(position);
		//ERRCHECK( instance.set3DAttributes(attributes) );

		//		FMOD.Studio._3D_ATTRIBUTES attributes;
		//fmodEvent.get3DAttributes (out attributes);
	
		//		VECTOR v;
		//		v.x = position.x;
		//		v.y = position.y;
		//		v.z = position.z;
	
		//		attributes.position = v;
	
		fmodEvent.set3DAttributes (attributes);
	
		fmodEvent.start ();

		fmodParameter.setValue (value);

		fmodEvent.release ();
	
		}
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if(Input.GetKeyDown(KeyCode.UpArrow))
		{
			_currentRainIntensity += 2;
			setRainIntensity(_currentRainIntensity);
		}
		
		if(Input.GetKeyDown(KeyCode.DownArrow))
		{
			_currentRainIntensity -= 2;
			setRainIntensity(_currentRainIntensity);
		}
	}
}
