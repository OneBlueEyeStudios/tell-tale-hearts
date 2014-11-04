using UnityEngine;
using System.Collections;

public class FrontDoor : Interactable {

	Animator _animator;

	bool _isClosed = true;
	
	RainSoundSource _rainSound;
	
	//EventInstance _windowEvent;
	//ParameterInstance _windowParameter;
	
	
	// Use this for initialization
	void Start () {
		_animator = GetComponent<Animator> ();
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
		StageManager._instance.OnEventTrigger ("DoorOpen");
		



		if (_isClosed)
			open ();
		else
			close ();
	}
	
	void open ()
	{
		_animator.Play ("OpenDoor");
		//_animator.SetTrigger ("open");
		_isClosed = false;
		
		SoundManager._instance.playSoundAtPositionAndParameter ("event:/household/door",transform.position,"door",0.5f);
		
		//_windowParameter.setValue (0);
		//_windowEvent.start ();
		if(_rainSound!=null)
			
			StartCoroutine (_rainSound.openWindow());
	}
	
	void close ()
	{
		_animator.SetTrigger ("close");
		_isClosed = true;
		
		//_windowParameter.setValue (9);
		//_windowEvent.start ();
		SoundManager._instance.playSoundAtPositionAndParameter ("event:/household/door",transform.position,"door",9.5f);
		
		if(_rainSound!=null)
			
			StartCoroutine (_rainSound.closeWindow());
		
	}

}
