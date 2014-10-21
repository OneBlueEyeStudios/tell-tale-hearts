using UnityEngine;
using System.Collections;
using FMOD;
using FMOD.Studio;

public class Window : Interactable {

	//public Animation _openAnimation;

	Animator _animator;
	bool _isClosed = true;

	RainSoundSource _rainSound;


	// Use this for initialization
	void Start () {
		_animator = GetComponent<Animator> ();
		_rainSound = GetComponent<RainSoundSource> ();
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	override public void interact()
	{
		if (_isClosed)
						open ();
				else
						close ();
	}

	void open ()
	{
		_animator.SetTrigger ("open");
		_isClosed = false;

		if(_rainSound!=null)

			StartCoroutine (_rainSound.openWindow());
	}

	void close ()
	{
		_animator.SetTrigger ("close");
		_isClosed = true;

		if(_rainSound!=null)
			
			StartCoroutine (_rainSound.closeWindow());

	}


}
