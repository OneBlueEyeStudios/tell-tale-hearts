using UnityEngine;
using System.Collections;

public class Door : Interactable {

	Animator _animator;

	public bool _isClosed = true;
	public bool _invert;
	bool _canInteract = true;
	
	// Use this for initialization
	void Start () {
		_animator = GetComponent<Animator> ();

	
		
	}
	
	void OnDisable()
	{
		
		//_windowEvent.stop (STOP_MODE.IMMEDIATE);
		//		_windowEvent.stop();
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}
	
	override public void interact()
	{
		if (!_canInteract)
			return;

		_canInteract = false;

		if (_isClosed)
			open ();
		else
			close ();
	}

	void reloadInteract()
	{
		_canInteract = true;
	}

	void open ()
	{
		Invoke ("reloadInteract", 1);

		//_animator.Play ("OpenDoor");
		//_animator.SetTrigger ("Open");

		if (_invert)
			_animator.SetTrigger ("Open");
			else
			_animator.SetTrigger ("OpenInvert");

		//_animator.SetTrigger ("open");
		_isClosed = false;

		SoundManager._instance.playSoundAtPositionAndParameter ("event:/household/door",transform,"door",0.5f,false,false,0.3f);

	}
	
	void close ()
	{
		
		Invoke ("reloadInteract", 1);

		if (_invert)
			_animator.SetTrigger ("Close");
		else
			_animator.SetTrigger ("CloseInvert");
		_isClosed = true;
		
		//_windowParameter.setValue (9);
		//_windowEvent.start ();
		SoundManager._instance.playSoundAtPositionAndParameter ("event:/household/door",transform,"door",9.5f,false,false,0.3f);

		
	}

}
