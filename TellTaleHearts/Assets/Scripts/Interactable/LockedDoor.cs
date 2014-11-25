using UnityEngine;
using System.Collections;

public class LockedDoor : Interactable {

	bool _canInteract = true;

	// Update is called once per frame
	void Update () {
		
	}
	
	override public void interact()
	{
		if (!_canInteract)
			return;

		_canInteract = false;

		Invoke("reloadInteract",0.5f);

		SoundManager._instance.playSoundAtPosition ("event:/action/door locked",transform);
	}

	void reloadInteract()
	{
		_canInteract = true;
	}

}
