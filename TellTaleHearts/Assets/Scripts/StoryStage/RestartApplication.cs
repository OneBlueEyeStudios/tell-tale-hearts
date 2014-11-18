using UnityEngine;
using System.Collections;
using Fungus;	


[CommandInfo("Scripting", 
             "Restart Game", 
             "Restart Game")]
public class RestartApplication : Command {

	public override void OnEnter()
	{
		SoundManager._instance.clearRegisteredEvents ();

		Application.LoadLevel (Application.loadedLevel);
	}

}
