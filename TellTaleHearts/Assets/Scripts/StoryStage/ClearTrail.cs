using UnityEngine;
using System.Collections;
using Fungus;


[CommandInfo("Scripting", 
             "ClearTrail", 
             "ClearTrail")]
public class ClearTrail : Command {


	public override void OnEnter()
	{
		StageManager._instance.clearTrail ();

		Continue ();
	}

}
