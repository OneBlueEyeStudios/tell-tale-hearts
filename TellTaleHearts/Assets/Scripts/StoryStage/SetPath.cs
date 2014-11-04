using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using Fungus;


[CommandInfo("Scripting", 
             "Set Path", 
             "Set path for a cop")]
public class SetPath : Command {

	public CopType _copType;
	public string _stageDescription;
	public List<Sequence> _path;

	public override void OnEnter()
	{

		//SequenceTesting._instance.OnEventFinished(GetSequence (),this);

		//Debug.LogWarning ("branch break");

		//SequenceTesting._instance (_copType, _path);

		Continue ();
	}


	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
