using UnityEngine;
using System.Collections;

public class TriggerDialog : StageStep {

	public string _dialogID;
	public string _startingPassage = "Start";

	void dialogueEnded (object sender, System.EventArgs e)
	{
		onEnd ();
	}

	#region implemented abstract members of StageStep
	public override void onStart ()
	{
		DialogueHandler._instance.dialogueEnded += dialogueEnded;

	}
	public override void execute ()
	{
		onStart ();

		DialogueHandler._instance.startDialogue (_dialogID,_startingPassage);

	}
	public override void onEnd ()
	{
		DialogueHandler._instance.dialogueEnded -= dialogueEnded;

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
