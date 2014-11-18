using UnityEngine;
using System.Collections;
using Fungus;


[CommandInfo("Scripting", 
             "RemoveAllCameraEffects", 
             "RemoveAllCameraEffects")]
public class RemoveAllCameraEffects : Command {



	
	public override void OnEnter()
	{
		StageManager._instance.disableAllCameraEffects();

		Continue ();
	}


	
}
