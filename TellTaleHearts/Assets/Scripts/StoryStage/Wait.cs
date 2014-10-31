using UnityEngine;
using System.Collections;

public class Wait : StageStep {

	public float _seconds;

	#region implemented abstract members of StageStep
	public override void onStart ()
	{

	}
	public override void execute ()
	{
		onStart ();
		Invoke ("onEnd",_seconds);
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
