﻿using UnityEngine;
using System.Collections;

public class FrontDoor : Interactable {

	public Animator _animator;

	bool _isClosed = true;
	
	RainSoundSource _rainSound;
	bool _canInteract = true;
	//EventInstance _windowEvent;
	//ParameterInstance _windowParameter;
	
	
	// Use this for initialization
	void Start () {
		//_animator = GetComponent<Animator> ();
		_rainSound = GetComponent<RainSoundSource> ();

		/**	
		_windowEvent = FMOD_StudioSystem.instance.GetEvent ("event:/household/window");
		
		FMOD.Studio._3D_ATTRIBUTES attributes;
		_windowEvent.get3DAttributes (out attributes);
		
		VECTOR v;
		v.x = transform.position.x;
		v.y = transform.position.y;
		v.z = transform.position.z;
		
		attributes.position =  v;
		
		_windowEvent.set3DAttributes (attributes);
		
		_windowEvent.getParameter ("window", out _windowParameter);
		
		_windowEvent.start ();
		*/
		
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

		StageManager._instance.OnEventTrigger (Constants.DOOR_OPEN_TRIGGER);

		if (_isClosed)
			open ();
		else
			close ();
	}
	
	void open ()
	{
		
		Invoke ("reloadInteract", 1);
		//_animator.Play ("OpenDoor");
		_animator.SetTrigger ("Open");
		//_animator.SetTrigger ("open");
		_isClosed = false;
		
		SoundManager._instance.playSoundAtPositionAndParameter ("event:/household/door",transform,"door",0.5f,false,false,0.3f);
		
		//_windowParameter.setValue (0);
		//_windowEvent.start ();
		if(_rainSound!=null)
			
			StartCoroutine (_rainSound.openWindow());
	}
	
	void close ()
	{
		
		Invoke ("reloadInteract", 1);
		_animator.SetTrigger ("Close");
		_isClosed = true;
		
		//_windowParameter.setValue (9);
		//_windowEvent.start ();
		SoundManager._instance.playSoundAtPositionAndParameter ("event:/household/door",transform,"door",9.5f,false,false,0.3f);
		
		if(_rainSound!=null)
			
			StartCoroutine (_rainSound.closeWindow());
		
	}

}
