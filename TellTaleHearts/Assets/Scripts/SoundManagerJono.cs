using UnityEngine;
using System.Collections;

[RequireComponent(typeof(AudioSource))]
public class SoundManagerJono : MonoBehaviour {

	AudioSource _source;

	public static SoundManagerJono _instance;

	public void stopMusic()
	{
		_source.Stop ();
	}

	void Awake()
	{
		
		DontDestroyOnLoad (this.gameObject);
		_instance = this;
		_source = GetComponent<AudioSource> ();
		
	}

	void Start()
	{
		Application.LoadLevel ("scene1");
	}
}	