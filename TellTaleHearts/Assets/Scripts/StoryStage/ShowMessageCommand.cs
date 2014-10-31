using UnityEngine;
using System.Collections;
using Fungus;
[CommandInfo("Scripting", 
             "Debug", 
             "Writes on console")]
public class ShowMessageCommand : Command {

	public string _message;

	public override void OnEnter()
	{
		//UnityEngine.Debug.LogWarning (_message);
		DialogueHandler._instance.showSimpleDialog (_message);
		Continue ();
	}

	public override string GetSummary()
	{
		if(_message!=null)
		return _message;
		return "";
	}

	
}
