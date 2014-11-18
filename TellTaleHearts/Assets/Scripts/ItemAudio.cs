using UnityEngine;
using System.Collections;

[RequireComponent(typeof(AudioSource))]
public class ItemAudio : MonoBehaviour {

	AudioSource _source;
	public AudioClip _clip;

	float maxVolume = 0.4f;

	void Awake()
	{
		//_source = GetComponent<AudioSource> ();
	}

	public void grabbed()
	{
		if (_source == null) {
						_source = SoundManager._instance.createSoundSource ();
			_source.transform.position = transform.position;
		}
				else
						_source.Stop ();

		_source.clip = _clip;
		//_source.Play ();

		Debug.LogWarning ("Grabbed");
		if (_source != null) 
		{
			_source.volume = maxVolume;
			_source.Play ();

			Destroy(_source.gameObject,_clip.length);
			//StopAllCoroutines();
		}
	}

	public void released()
	{
		Debug.LogWarning ("Released");
		if (_source != null) 
		{
			FadeVolume fade = _source.gameObject.AddComponent<FadeVolume>();
			fade.Init(5);
			//StartCoroutine (fadeVolume (5.0f));
			Destroy(_source.gameObject,5);
		}
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
