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

	public EventInstance _suspicionEvent;
	int _currentSuspicion = 0;

	public EventInstance _realizationEvent;
	int _currentDoubt = 0;
	//public EventInstance _musicEvent;

	public void gameStart()
	{
		_suspicionEvent = playSoundAtPosition ("event:/music/suspicion", Vector3.zero, true);
		_realizationEvent = playSoundAtPosition ("event:/music/realization", Vector3.zero, true);
	}

	public AudioSource playDialogue(string tag, out float length, Transform pos)
	{
		GameObject go = new GameObject ("Dialogue_" + tag);
		go.transform.position = pos.position;
		AudioSource source = go.AddComponent<AudioSource> ();
		source.minDistance = 8;

		AudioClip clip = getClipFor (tag);


		//Could not find the 
		if (clip == null) {

			UnityEngine.Debug.LogError("Could not find dialogue with tag: "+tag);
			length = 0;
			return null;
		}
		source.clip = clip;
		length = clip.length;

		source.Play ();

		Destroy (go, length);

		return source;

		/*
		AudioClip clip = getClipFor (tag);

		if (clip == null)
						return 0;

		AudioSource.PlayClipAtPoint (clip,_cop.transform.position);

		return clip.length;
		*/
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

		Screen.showCursor = false;
		Screen.lockCursor = true;
		
		

		//StartCoroutine (increaseSuspicionParameter ("theme"));

		if(Application.loadedLevelName=="GameInit")
			Invoke ("playThemeMusic", _themeMusicWaitTime);
	
	}




	public void setDoubtLevel(int level)
	{


		if (level == _currentDoubt)
			return;
		
		_currentDoubt = level;

		PLAYBACK_STATE state;
		_realizationEvent.getPlaybackState (out state);

//		UnityEngine.Debug.LogWarning (state);

		switch (level) {
		case 1:
//			UnityEngine.Debug.LogError ("setDoubtLevel: " + level);
			//_realizationEvent.setParameterValue("level",9.5f);
			//_realizationEvent.start();
			playSoundAtPositionAndParameter("event:/music/realization",transform,"level",3.5f);

			//StartCoroutine (increaseSuspicionParameter ("level1"));
			break;
		case 2:
			//_realizationEvent.setParameterValue("level",3.5f);
			//StartCoroutine (increaseSuspicionParameter ("level2"));
			playSoundAtPositionAndParameter("event:/music/realization",transform,"level",5.5f);
			break;
		case 3:
			//_realizationEvent.setParameterValue("level",5.5f);
			playSoundAtPositionAndParameter("event:/music/realization",transform,"level",7.5f);
			//StartCoroutine (increaseSuspicionParameter ("level3"));
			break;
		case 4:
			//_realizationEvent.setParameterValue("level",7.5f);
			playSoundAtPositionAndParameter("event:/music/realization",transform,"level",7.5f);
			//StartCoroutine (increaseSuspicionParameter ("level4"));
			break;
		case 5:
			//_realizationEvent.setParameterValue("level",9.5f);
			playSoundAtPositionAndParameter("event:/music/realization",transform,"level",9.5f);
			//StartCoroutine (increaseSuspicionParameter ("level5"));
			break;
		default:
			break;
		}
		
	}

	public void setSuspicionLevel(int level)
	{
		if (level == _currentSuspicion)
						return;

		_currentSuspicion = level;

		switch (level) {
		case 1:
			StartCoroutine (increaseSuspicionParameter ("level1"));
			break;
		case 2:
			StartCoroutine (increaseSuspicionParameter ("level2"));
			break;
		case 3:
			StartCoroutine (increaseSuspicionParameter ("level3"));
			break;
		case 4:
			StartCoroutine (increaseSuspicionParameter ("level4"));
			break;
		case 5:
			StartCoroutine (increaseSuspicionParameter ("level5"));
			break;
		default:
						break;
		}

	}

	void playThemeMusic()
	{
//		UnityEngine.Debug.LogWarning ("Play music NOW!");

		audio.Play ();

		//StartCoroutine (increaseSuspicionParameter ("theme"));
		//_suspicionEvent.setParameterValue("theme"
	}

	public void increaseSuspicionParam(string parameter, int target = 10)
	{
		StartCoroutine (increaseSuspicionParameter (parameter, target));

	}

	IEnumerator increaseSuspicionParameter (string parameter, int target = 10)
	{
		float duration = 5;
		float elapsed = 0;

		//int target = 10;

		while (elapsed < duration) 
		{
		
			float t = elapsed/duration;

			_suspicionEvent.setParameterValue(parameter,Mathf.Lerp(0,target,t));

			elapsed += Time.deltaTime;
			yield return  null;

		}
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

	public void stopSound (string eventName)
	{
		FMODEvent ev;
		if (HasEventWithName (eventName, out ev)) 
		{
			ev._event.stop(STOP_MODE.ALLOWFADEOUT);
			ev._event.release();
			_soundEvents.Remove(ev);
		}
	}

	public void SetParameterForEvent (string eventName, string parameterName, float parameterValue)
	{
		FMODEvent ev;
		if (HasEventWithName (eventName, out ev)) 
		{

			PLAYBACK_STATE state;
			ev._event.getPlaybackState(out state);
			if(state == PLAYBACK_STATE.STOPPED || state == PLAYBACK_STATE.STOPPING)
				ev._event.start();

			UnityEngine.Debug.LogWarning("State: "+state);

			ev._event.setParameterValue(parameterName,parameterValue);


		}
	}
	public void TweenParameter (string eventName, string parameterName, float duration, float start, float target)
	{
		FMODEvent ev;
		if (HasEventWithName (eventName, out ev)) 
		{
			PLAYBACK_STATE state;
			ev._event.getPlaybackState(out state);
			if(state == PLAYBACK_STATE.STOPPED || state == PLAYBACK_STATE.STOPPING)
				ev._event.start();

			StartCoroutine(TweenParameterCoroutine(ev,parameterName,duration,start,target));
		}
	}

	IEnumerator TweenParameterCoroutine (FMODEvent ev, string parameterName, float duration, float start, float target)
	{
		float elapsed = 0;

		while (elapsed < duration) 
		{


			float t = elapsed/duration;
			float value = Mathf.Lerp(start,target,t);
			ev._event.setParameterValue(parameterName,value);

			elapsed += Time.deltaTime;

			
			UnityEngine.Debug.LogWarning("TweenParameterCoroutine: "+parameterName+"   "+value);

			yield return null;
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


	public void clearRegisteredEvents()
	{
		_soundEvents.Clear ();
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

	public AudioSource createSoundSource ()
	{
		GameObject go = new GameObject ("SoundSource");
		AudioSource source = go.AddComponent<AudioSource> ();

		return source;
	}
}
