using UnityEngine;
using System.Collections;
using Fungus;

public class Branch : StageStep {


	//public Fungus.Command _leftCommand, _rightCommands;
	//public Fungus.Sequence _leftSequence, _rightSequence;


	public StageStep _leftSide, _rightSide;
	public Stage _leftStage, _rightStage;

	void stageStepEnded (StageStep stageStep)
	{
		if (stageStep == _leftSide) 
		{
			StageManager._instance.setCurrentStage(_leftStage);

			_rightSide.stop();

			onEnd();
		}
		else if (stageStep == _rightSide) 
		{
			StageManager._instance.setCurrentStage(_rightStage);
		
			_leftSide.stop();

			onEnd();
		}
	}

	#region implemented abstract members of StageStep
	public override void onStart ()
	{
	
		StageManager._instance.stageStepEnded += stageStepEnded;

	}
	public override void execute ()
	{
	
		onStart ();

		_leftSide.execute ();
		_rightSide.execute ();

	}
	public override void onEnd ()
	{
		StageManager._instance.stageStepEnded -= stageStepEnded;
	}
	#endregion

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

}
