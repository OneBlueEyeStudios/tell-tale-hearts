using UnityEngine;
using System.Collections;
using Fungus;

[CommandInfo("Scripting", 
             "Set Wait for Dialogue", 
             "Set Wait for Dialogue")]
public class SetWaitForDialogue : Command {

	public Cop _cop;
	public bool _waitingForDialogue;

	public override void OnEnter ()
	{
		_cop._waitingForDialogue = _waitingForDialogue;
		Continue ();
	}

}
