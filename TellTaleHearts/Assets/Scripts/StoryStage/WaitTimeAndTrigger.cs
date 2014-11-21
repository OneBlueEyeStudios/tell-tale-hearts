using UnityEngine;
using System.Collections;
using Fungus;


[CommandInfo("Scripting", 
             "WaitTimeAndTrigger", 
             "WaitTimeAndTrigger")]
public class WaitTimeAndTrigger : Command {

	public string _triggerName;
	public float _timeWait;

	float elapsed = 0;
	bool started = false;
	bool triggerReached = false;

	public override void OnEnter()
	{
		StageManager._instance.eventTrigger += eventTrigger;
		started = true;

	}


	void eventTrigger (string eventName)
	{
		if (eventName.Equals (_triggerName))
						onEnd ();
	}


	public void onEnd ()
	{
		StageManager._instance.eventTrigger -= eventTrigger;
		triggerReached = true;
//		StageManager._instance.currentStepDone (this);


	}

	void Update()
	{
		if (started)
			elapsed += Time.deltaTime;


		if (started && triggerReached && elapsed >= _timeWait) {
			triggerReached = false;
						started = false;
						elapsed = 0;
						Continue ();
				}
	}

	public override string GetSummary()
	{
		if(_triggerName!=null)
		return _triggerName;
		return "";
	}
	
}
