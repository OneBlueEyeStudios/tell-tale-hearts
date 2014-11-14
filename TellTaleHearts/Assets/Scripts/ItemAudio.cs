using UnityEngine;
using System.Collections;

[RequireComponent(typeof(AudioSource))]
public class ItemAudio : MonoBehaviour {

	AudioSource _source;

	void Awake()
	{
		_source = GetComponent<AudioSource> ();
	}

	public void grabbed()
	{
		Debug.LogWarning ("Grabbed");
		if (_source != null) 
		{
			_source.volume = 1f;
						_source.Play ();
			StopAllCoroutines();
				}
	}

	public void released()
	{
		Debug.LogWarning ("Released");
		if (_source != null)
			StartCoroutine (fadeVolume (5.0f));
	}

	IEnumerator fadeVolume (float duration)
	{
		if (_source == null)
						yield break;

		float elapsed = 0;


		while (_source.volume > 0) 
		{
			float t = elapsed/duration;

			_source.volume = Mathf.Lerp(1.0f,0f,t);

			elapsed+= Time.deltaTime;

			yield return null;
		}

		_source.Stop ();
	}

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
