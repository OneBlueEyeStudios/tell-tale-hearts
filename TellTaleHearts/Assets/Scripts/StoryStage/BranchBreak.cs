using UnityEngine;
using System.Collections;
using Fungus;


[CommandInfo("Scripting", 
             "Branch Break", 
             "Break the branch.")]
public class BranchBreak : Command {

	public override void OnEnter()
	{

		SequenceTesting._instance.OnEventFinished(GetSequence (),this);

		Debug.LogWarning ("branch break");

		//Continue ();
	}


	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
