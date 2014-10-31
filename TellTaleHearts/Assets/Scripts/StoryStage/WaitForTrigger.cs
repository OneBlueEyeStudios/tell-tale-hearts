using UnityEngine;
using System.Collections;




public class WaitForTrigger : StageStep {

	public string _triggerName;

	#region implemented abstract members of StageStep
	public override void onStart ()
	{
		StageManager._instance.eventTrigger += eventTrigger;
	}

	void eventTrigger (string eventName)
	{
		if (eventName.Equals (_triggerName))
						onEnd ();
	}

	public override void execute ()
	{
		onStart ();

	}
	public override void onEnd ()
	{
		StageManager._instance.eventTrigger -= eventTrigger;
		StageManager._instance.currentStepDone (this);

	}
	#endregion

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
