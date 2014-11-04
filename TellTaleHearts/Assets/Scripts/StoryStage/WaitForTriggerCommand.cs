using UnityEngine;
using System.Collections;
using Fungus;


[CommandInfo("Scripting", 
             "Wait for trigger", 
             "Wait for a specific trigger")]
public class WaitForTriggerCommand : Command {

	public string _triggerName;

	
	public override void OnEnter()
	{
		StageManager._instance.eventTrigger += eventTrigger;

	}


	void eventTrigger (string eventName)
	{
		if (eventName.Equals (_triggerName))
						onEnd ();
	}


	public void onEnd ()
	{
		StageManager._instance.eventTrigger -= eventTrigger;
//		StageManager._instance.currentStepDone (this);
		Continue ();
	}

	public override string GetSummary()
	{
		if(_triggerName!=null)
		return _triggerName;
		return "";
	}
	
}
