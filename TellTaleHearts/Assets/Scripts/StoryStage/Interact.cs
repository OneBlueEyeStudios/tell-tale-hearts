using UnityEngine;
using System.Collections;

public class Interact : StageStep {

	public Interactable _interactable;

	#region implemented abstract members of StageStep
	public override void onStart ()
	{
	}
	public override void execute ()
	{
		onStart ();

		_interactable.interact ();

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
