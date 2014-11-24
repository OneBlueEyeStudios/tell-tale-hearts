using UnityEngine;
using System.Collections;
using Fungus;
[CommandInfo("Scripting", 
             "Debug", 
             "Writes on console")]
public class ShowMessageCommand : Command {

	public string _message;
	public int _time;

	public override void OnEnter()
	{
		//UnityEngine.Debug.LogWarning (_message);
		if(_time == 0)
		DialogueHandler._instance.showSimpleDialog (_message);
		else
			DialogueHandler._instance.showSimpleDialog (_message,_time);
		Continue ();
	}

	public override string GetSummary()
	{
		if(_message!=null)
		return _message;
		return "";
	}

	
}
