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
	public bool _track;
	public Transform _position;

	public FMODEvent(EventInstance e, SoundType t)
	{
		_event = e;
		_type = t;
	}
	public FMODEvent(EventInstance e, string eventName,bool track, Transform trans)
	{
		_event = e;
		_eventName = eventName;
		_track = track;
		_position = trans;
	}

}


public class SoundManager : MonoBehaviour {


	public static SoundManager _instance;

	GameObject _cop;

	void Awake()
	{

		DontDestroyOnLoad (this.gameObject);

		_instance = this;
		_rainEvents = new List<RainSoundSource> ();
		_currentRainIntensity = 0;
	}

	public float _themeMusicWaitTime = 25;

	public List<FMODEvent> _soundEvents;

	public List<RainSoundSource> _rainEvents;

	public AudioClip[] _dialogueDB;

	public float _currentRainIntensity;



	public float playDialogue(string tag)
	{
//		UnityEngine.Debug.LogWarning ("play: " + tag);

		AudioClip clip = getClipFor (tag);

		if (clip == null)
						return 0;

		AudioSource.PlayClipAtPoint (clip,_cop.transform.position);

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

//		if (register)
//			RegisterNewEvent (fmodEvent, eventName);

		return fmodEvent;
	}

	public EventInstance playSoundAtPositionAndParameter(string eventName, Transform position, string parameterName, float value, bool register = false, bool track = false, float volume = 1)
	{
		EventInstance fmodEvent = FMOD_StudioSystem.instance.GetEvent (eventName);
		ParameterInstance fmodParameter;

		RESULT result = fmodEvent.getParameter (parameterName, out fmodParameter);
	
		var attributes = FMOD.Studio.UnityUtil.to3DAttributes(position.position);

		fmodEvent.set3DAttributes (attributes);
	
		fmodEvent.setVolume (volume);

		fmodEvent.start ();

		fmodParameter.setValue (value);

		fmodEvent.release ();
	
		if (register)
						RegisterNewEvent (fmodEvent, eventName,track,position);

		return fmodEvent;
		}

	// Use this for initialization
	void Start () {
	
		_soundEvents = new List<FMODEvent> ();


		if(Application.loadedLevelName=="GameInit")
			Invoke ("playThemeMusic", _themeMusicWaitTime);

	}

	void playThemeMusic()
	{
//		UnityEngine.Debug.LogWarning ("Play music NOW!");

		audio.Play ();
	}

	public void stopThemeMusic()
	{
		audio.Stop ();
	}

	public void lowerThemeMusic ()
	{
		_cop = GameObject.Find ("BadCop");

		StartCoroutine (lowerThemeCoroutine (0.0f));
	}

	IEnumerator lowerThemeCoroutine(float newVolume)
	{

		yield return new WaitForSeconds (5);

		while (audio.volume > newVolume) 
		{
		
			audio.volume -= Time.deltaTime/3;
			yield return null;
		}
	}

	public void RegisterNewEvent(EventInstance eventInstance, string eventName,bool track,Transform position)
	{
		_soundEvents.Add (new FMODEvent (eventInstance, eventName, track, position));
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
		if(Input.GetKeyDown(KeyCode.Escape))
		{
			if(Application.loadedLevelName == "NewSplashScreen")
				Application.LoadLevel("test_scene");
			else
				Application.Quit();
		}


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

		trackAudio ();

	}


	void trackAudio ()
	{
		foreach (FMODEvent ev in _soundEvents) 
		{
			if(ev._track)
			{
				ev._event.set3DAttributes(FMOD.Studio.UnityUtil.to3DAttributes(ev._position.position));
			}
		}
	}
}
