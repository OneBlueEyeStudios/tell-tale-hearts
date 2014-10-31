using UnityEngine;
using System.Collections;
using FMOD.Studio;


public class PlaySound : StageStep {

	//public string _eventName;
	public AudioClip _audioClip;
	public Transform _position;

	// Uses StageManager._position as the source position
	public override void onStart()
	{

	}

	public override void onEnd()
	{
		StageManager._instance.currentStepDone(this);
	}

	public override void execute()
	{
		onStart ();
		AudioSource.PlayClipAtPoint (_audioClip, _position.position);

		//FMOD_StudioSystem.instance.PlayOneShot (_eventName,StageManager._instance._position);
		onEnd ();

	}

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
