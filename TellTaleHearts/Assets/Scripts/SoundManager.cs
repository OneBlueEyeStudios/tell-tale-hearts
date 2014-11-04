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
	public string _eventName;

	public FMODEvent(EventInstance e, SoundType t)
	{
		_event = e;
		_type = t;
	}
	public FMODEvent(EventInstance e, string eventName)
	{
		_event = e;
		_eventName = eventName;
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

	public List<FMODEvent> _soundEvents;

	public List<RainSoundSource> _rainEvents;

	public AudioClip[] _dialogueDB;

	public float _currentRainIntensity;

	public float playDialogue(string tag)
	{
//		UnityEngine.Debug.LogWarning ("Play: " + tag);

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

	public EventInstance playSoundAtPosition(string eventName, Vector3 position, bool register = false)
	{
		EventInstance fmodEvent = FMOD_StudioSystem.instance.GetEvent (eventName);
		ParameterInstance fmodParameter;

		var attributes = FMOD.Studio.UnityUtil.to3DAttributes(position);
	
		fmodEvent.set3DAttributes (attributes);
		
		fmodEvent.start ();

		
		fmodEvent.release ();

		if (register)
			RegisterNewEvent (fmodEvent, eventName);

		return fmodEvent;
	}

	public EventInstance playSoundAtPositionAndParameter(string eventName, Vector3 position, string parameterName, float value, bool register = false)
	{
		EventInstance fmodEvent = FMOD_StudioSystem.instance.GetEvent (eventName);
		ParameterInstance fmodParameter;

		RESULT result = fmodEvent.getParameter (parameterName, out fmodParameter);
	
		var attributes = FMOD.Studio.UnityUtil.to3DAttributes(position);

		fmodEvent.set3DAttributes (attributes);
	
		fmodEvent.start ();

		fmodParameter.setValue (value);

		fmodEvent.release ();
	
		if (register)
						RegisterNewEvent (fmodEvent, eventName);

		return fmodEvent;
		}

	// Use this for initialization
	void Start () {
	
		_soundEvents = new List<FMODEvent> ();
	}

	public void RegisterNewEvent(EventInstance eventInstance, string eventName)
	{
		_soundEvents.Add (new FMODEvent (eventInstance, eventName));
	}

	public bool HasEventWithName(string eventName, out FMODEvent outEvent)
	{
		outEvent = null;
		foreach (FMODEvent ev in _soundEvents) 
		{
			if(ev._eventName.Equals(eventName))
			{
				outEvent = ev;
				return true;
			}
		}
		return false;
	}

	public void SetParameterForEvent (string eventName, string parameterName, float parameterValue)
	{
		FMODEvent ev;
		if (HasEventWithName (eventName, out ev)) 
		{
			ev._event.setParameterValue(parameterName,parameterValue);
		}
	}
	public void TweenParameter (string eventName, string parameterName, string easeType, float duration)
	{
		FMODEvent ev;
		if (HasEventWithName (eventName, out ev)) 
		{
			
		}
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
