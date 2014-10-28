using UnityEngine;
using System.Collections;
using FMOD.Studio;
using FMOD;

public class Stove : Interactable {


	EventInstance _stoveSound;
	ParameterInstance _doorValue;
	
	float _doorFloat;

	bool _closedDoor;

	// Use this for initialization
	void Start () {

		_closedDoor = true;
		
		_stoveSound = FMOD_StudioSystem.instance.GetEvent ("event:/household/stove");
		
		FMOD.Studio._3D_ATTRIBUTES attributes;
		_stoveSound.get3DAttributes (out attributes);
		
		VECTOR v;
		v.x = transform.position.x;
		v.y = transform.position.y;
		v.z = transform.position.z;
		
		attributes.position =  v;
		
		_stoveSound.set3DAttributes (attributes);
		
		_stoveSound.start ();
		
		_stoveSound.getParameter ("door", out _doorValue);
	
		_doorFloat = 0;
		
		_doorValue.setValue (_doorFloat);

	}

	// Update is called once per frame
	void Update () {
	
	}

	#region implemented abstract members of Interactable

	public override void interact ()
	{
		if (_closedDoor) {
						_closedDoor = false;

						_doorFloat = 4;
			
						_doorValue.setValue (_doorFloat);

				} 
		else 
		{
				_closedDoor = true;
				
				_doorFloat = 7;
				
				_doorValue.setValue (_doorFloat);
				
				}
	}

	#endregion
}
