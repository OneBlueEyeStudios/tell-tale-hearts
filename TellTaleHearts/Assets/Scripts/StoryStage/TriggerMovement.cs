using UnityEngine;
using System.Collections;

public class TriggerMovement : StageStep {


	public CopType _copType;
	public string _stage;

	#region implemented abstract members of StageStep

	void pathFinished (CopType agent)
	{
		if (agent == _copType)
						onEnd ();
	}
	public override void onStart ()
	{
		SequenceTesting._instance.pathFinished += pathFinished;
	}
	public override void execute ()
	{
		onStart ();

		SequenceTesting._instance.MoveCharacter (_copType, _stage);

	}
	public override void onEnd ()
	{
		SequenceTesting._instance.pathFinished -= pathFinished;

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
