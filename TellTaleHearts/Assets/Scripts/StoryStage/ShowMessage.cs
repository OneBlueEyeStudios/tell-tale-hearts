using UnityEngine;
using System.Collections;

public class ShowMessage : StageStep {

	public string _message;

	#region implemented abstract members of StageStep
	public override void onStart ()
	{
	}
	public override void execute ()
	{
		onStart ();
		//Debug.LogWarning (_message);
		DialogueHandler._instance.showSimpleDialog (_message);
		onEnd ();
	}
	public override void onEnd ()
	{
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
