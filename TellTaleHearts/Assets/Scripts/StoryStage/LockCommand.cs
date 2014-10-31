using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using Fungus;
using System;

[CommandInfo("Scripting", 
             "Lock", 
             "Lock between two sequences.")]
public class LockCommand : Command {


	public Fungus.Sequence _leftSequence;
	public Fungus.Sequence _rightSequence;

	void eventFinished (Fungus.Sequence sequence, Fungus.Command command)
	{
		if (sequence == _leftSequence) {
			Debug.LogWarning("Left sequence finished");
						//_rightSequence.Stop ();
			ExecuteSequence(_leftSequence);
			//sequence = _leftSequence;
			//Continue(_leftSequence.commandList[2]);
			command.Continue();
			SequenceTesting._instance.eventFinished -= eventFinished;
				} else if (sequence == _rightSequence) {
			Debug.LogWarning("Right sequence finished");
						//_leftSequence.Stop ();
			//ExecuteSequence(_rightSequence);
			//sequence = _rightSequence;
			//Continue(_rightSequence.commandList[2]);
			command.Continue();
			SequenceTesting._instance.eventFinished -= eventFinished;
				}

	}

	public override void OnEnter()
	{
		SequenceTesting._instance.eventFinished += eventFinished;


//		Debug.LogWarning ("askjdkajsd");
		ExecuteSequence (_leftSequence);
		ExecuteSequence (_rightSequence);

//		Continue (_leftSequence);
//		Continue (_rightSequence);
	}

	public override void GetConnectedSequences(ref List<Fungus.Sequence> connectedSequences)
	{
		//if (targetSequence != null)
		{
			connectedSequences.Add(_leftSequence);
			connectedSequences.Add(_rightSequence);
		}		
	}

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
