using UnityEngine;
using System.Collections;

public class FadeVolume : MonoBehaviour {

	AudioSource _source;

	void Awake()
	{
		_source = GetComponent<AudioSource> ();

	}

	IEnumerator fadeVolume (float duration)
	{
		if (_source == null)
			yield break;
		
		float elapsed = 0;
		float startVolume = _source.volume;
		
		while (_source.volume > 0) 
		{
			float t = elapsed/duration;
			
			_source.volume = Mathf.Lerp(startVolume,0f,t);
			
			elapsed+= Time.deltaTime;
			
			yield return null;
		}
		
		_source.Stop ();
	}

	public void Init(int duration)
	{
		StartCoroutine (fadeVolume (duration));
	}

}
