using UnityEngine;
using System.Collections;
using FMOD;
using FMOD.Studio;

//[RequireComponent(typeof(AudioSource))]
public class ItemAudio : MonoBehaviour {

	public static bool _isPlayingItemSound;
		
	AudioSource _source;
	public AudioClip _clip;

	public FMODAsset _asset;
	EventInstance _ev;

	public bool _delay;
	float maxVolume = 0.4f;

	void Awake()
	{
		//_source = GetComponent<AudioSource> ();
	}

	void playCue()
	{
		if (_ev == null) {
			_ev = SoundManager._instance.playSoundAtPosition (_asset, transform);
			
		} else {
			_ev.stop (STOP_MODE.IMMEDIATE);
			_ev = SoundManager._instance.playSoundAtPosition (_asset, transform);
		}

		_isPlayingItemSound = true;

		EventDescription desc;
		_ev.getDescription (out desc);

		int length;
		desc.getLength (out length);
			
		float sec = length / 1000f;

//		UnityEngine.Debug.Log ("Length:" + sec);

		Invoke ("reloadPlayingItem",sec);

	}

	public void reloadPlayingItem()
	{
		_isPlayingItemSound = false;
	}

	public void pocketed()
	{
		CancelInvoke("playCue");

		if (_ev != null) {
						_ev.stop (STOP_MODE.IMMEDIATE);
						_ev.release ();

				}
	}

	public void grabbed()
	{
		if (_delay)
						Invoke ("playCue", 2f);
				else
						playCue ();
//		if (_ev == null) {
//		
//						_ev = SoundManager._instance.playSoundAtPosition (_asset, transform);
//		
//				} else {
//					_ev.stop (STOP_MODE.IMMEDIATE);
//					_ev = SoundManager._instance.playSoundAtPosition (_asset, transform);
//				}
//
//		if (_source == null) {
//						_source = SoundManager._instance.createSoundSource ();
//			_source.transform.position = transform.position;
//		}
//				else
//						_source.Stop ();
//

//		_source.clip = _clip;
//		//_source.Play ();
//
////		UnityEngine.Debug.LogWarning ("Grabbed");
//		if (_source != null) 
//		{
//			_source.volume = maxVolume;
//			_source.Play ();
//
//			Destroy(_source.gameObject,_clip.length);
//			//StopAllCoroutines();
//		}
	}

	IEnumerator fadeVolumeAndDestroy (int i)
	{
		float elapsed = 0;
		float duration = 1;

		float startVolume;
		_ev.getVolume (out startVolume);

		while (elapsed < duration) 
		{
			float t = elapsed/duration;

			_ev.setVolume(Mathf.Lerp(startVolume,0,t));

			elapsed += Time.deltaTime;

			yield return null;
		}

		_ev.stop (STOP_MODE.IMMEDIATE);
		_ev.release ();
	}

	public void released()
	{

		if (_ev != null) {
			StartCoroutine(fadeVolumeAndDestroy(1));
			//_ev.stop (STOP_MODE.ALLOWFADEOUT);


		}

//		Debug.LogWarning ("Released");
//		if (_source != null) 
//		{
//			FadeVolume fade = _source.gameObject.AddComponent<FadeVolume>();
//			fade.Init(5);
//			//StartCoroutine (fadeVolume (5.0f));
//			Destroy(_source.gameObject,5);
//		}
	}

	/*
	IEnumerator fadeVolume (float duration)
	{
		if (_source == null)
						yield break;

		float elapsed = 0;


		while (_source.volume > 0) 
		{
			float t = elapsed/duration;

			_source.volume = Mathf.Lerp(maxVolume,0f,t);

			elapsed+= Time.deltaTime;

			yield return null;
		}

		_source.Stop ();
	}
*/
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
