using UnityEngine;
using System.Collections;
using FMOD;
using FMOD.Studio;

[RequireComponent(typeof(InteractableLight))]
public class KeroseneLamp : MonoBehaviour {

	public FMODAsset _asset;

	public EventInstance _keroseneEvent;


	InteractableLight _interactableLight;

	void Awake()
	{
		_interactableLight = GetComponent<InteractableLight> ();
	}

	public void Start()
	{
		_keroseneEvent = FMOD_StudioSystem.instance.GetEvent (_asset);
		_keroseneEvent.start ();
		_keroseneEvent.setVolume (0);
		//_keroseneEvent.release ();
	}

	public void Update()
	{



		float volume = _interactableLight._isOn ? 1.0f : 0.0f;

		if (volume > 0.9f) 
		{
			PLAYBACK_STATE state;
			//_keroseneEvent.getDescription(out desc);
			_keroseneEvent.getPlaybackState(out state);

			if(state == PLAYBACK_STATE.STOPPED || state == PLAYBACK_STATE.STOPPING)
				_keroseneEvent.start();
		}

		_keroseneEvent.setVolume (volume);
	}
}
