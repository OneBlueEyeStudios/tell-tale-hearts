using UnityEngine;
using System.Collections;
using Fungus;

[CommandInfo("Scripting", 
             "SetPlayerLook", 
             "SetPlayerLook.")]
public class SetPlayerLook : Command {


	public bool _enable;


	public override void OnEnter()
	{

		CharView._instance.setMouseLookEnabled (_enable);

		Continue ();

	}
}
