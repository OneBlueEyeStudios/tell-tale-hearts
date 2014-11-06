using UnityEngine;
using System.Collections;
using Fungus;

[CommandInfo("Scripting", 
             "Merge point for Fungus", 
             "Merge point for Fungus")]
public class FungusMerge : Command {
	void fungusMerged ()
	{
		StageManager._instance.fungusMerge -= fungusMerged;
		Continue ();
	}

	public override void OnEnter()
	{

		StageManager._instance.fungusMerge += fungusMerged;
		StageManager._instance.fungusReachedMerge ();
	}

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
