using UnityEngine;
using System.Collections;

public class SoundManager : MonoBehaviour {

	public static SoundManager _instance;

	void Awake()
	{
		_instance = this;
	}

	public AudioClip[] _dialogueDB;

	public float playDialogue(string tag)
	{
		Debug.LogWarning ("Plau: " + tag);

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

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
