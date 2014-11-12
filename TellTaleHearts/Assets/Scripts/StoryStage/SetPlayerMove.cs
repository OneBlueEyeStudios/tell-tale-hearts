using UnityEngine;
using System.Collections;
using Fungus;

[CommandInfo("Scripting", 
             "SetPlayerMove", 
             "SetPlayerMove")]
public class SetPlayerMove : Command {


	public bool _enable;


	public override void OnEnter()
	{

		CharView._instance.setCharacterMotorEnabled (_enable);

		Continue ();

	}
}
