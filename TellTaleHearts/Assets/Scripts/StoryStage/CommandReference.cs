using UnityEngine;
using System.Collections;
using Fungus;
[CommandInfo("Scripting", 
             "Command Test", 
             "Command Test")]
public class CommandReference : Command {

	public Command _command;

	public override void OnEnter()
	{
		//UnityEngine.Debug.LogWarning (_message);
		//DialogueHandler._instance.showSimpleDialog (_message);
		Continue ();
	}

	public override string GetSummary()
	{
		//if(_message!=null)
		//return _message;
		return "";
	}

	
}
