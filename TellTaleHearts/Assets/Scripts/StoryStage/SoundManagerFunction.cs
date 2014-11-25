using UnityEngine;
using System.Collections;
using Fungus;

[CommandInfo("Scripting", 
             "SoundManagerFunction", 
             "SoundManagerFunction")]
public class SoundManagerFunction : Command {

	public override void OnEnter()
	{
		SoundManager._instance.playUnderArrestSuspicion ();

		Continue ();
	}

}
