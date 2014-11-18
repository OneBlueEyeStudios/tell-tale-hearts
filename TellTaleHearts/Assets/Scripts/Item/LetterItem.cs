using UnityEngine;
using System.Collections;
using FMOD;
using FMOD.Studio;

public class LetterItem : Item {

	
	override public void putInInventory ()
	{
		CharInventory._instance.addToInventory (this);
		//gameObject.SetActive (false);


		hide.setValue (9.5f);
		letter.start ();
	}
	override public void grabbed ()
	{


		//SoundManager._instance.playSoundAtPosition ("event:/action/letter",transform.position,false);

		pickndrop.setValue (0f);
		letter.start ();

		PLAYBACK_STATE state;

		letter.getPlaybackState (out state);

		UnityEngine.Debug.LogWarning ("Grab letter: "+state);
	}
	override public void released ()
	{
		//SoundManager._instance.playSoundAtPositionAndParameter ("event:/action/letter",transform,"hide",9.5f);

		pickndrop.setValue (9.5f);
		letter.start ();
		//letter.setParameterValue ("pickanddrop", 9.5f);
	}

	EventInstance letter;
	ParameterInstance pickndrop;
	ParameterInstance hide;
	
	float hideFloat, pickndropFloat;
	
	// Use this for initialization
	void Start () {
		
		
		letter = FMOD_StudioSystem.instance.GetEvent ("event:/action/letter");
		
		FMOD.Studio._3D_ATTRIBUTES attributes;
		letter.get3DAttributes (out attributes);
		
		VECTOR v;
		v.x = transform.position.x;
		v.y = transform.position.y;
		v.z = transform.position.z;
		
		attributes.position =  v;
		
		letter.set3DAttributes (attributes);
		
		letter.start ();
		
		letter.getParameter ("hide", out hide);
		letter.getParameter ("pickndrop", out pickndrop);
		
		hideFloat = 0;
		pickndropFloat = 0;
		
		//rainValue.setValue (rainFloat);
		//windowValue.setValue (windowFloat);
		
		//SoundManager._instance.registerNewRainSource (this, SoundType.rain);
	}

	// Update is called once per frame
	void Update () {
	
	}
}
