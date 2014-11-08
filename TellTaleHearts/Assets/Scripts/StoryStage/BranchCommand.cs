using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using Fungus;
using System;

[CommandInfo("Scripting", 
             "Branch", 
             "Branch between two sequences.")]
public class BranchCommand : Command
{


		public Fungus.Sequence _leftSequence;
		public Fungus.Sequence _rightSequence;

		void eventFinished (Fungus.Sequence sequence, Fungus.Command command)
		{
				if (sequence == _leftSequence) {
			SequenceTesting._instance.eventFinished -= eventFinished;
						Debug.LogWarning ("Sequence:" + _leftSequence.name + " finished");
						//ExecuteSequence (_leftSequence);
						command.Continue ();
						
				} else if (sequence == _rightSequence) {
			SequenceTesting._instance.eventFinished -= eventFinished;
						Debug.LogWarning ("Sequence:" + _rightSequence.name + " finished");
						command.Continue ();
						
				}

		}

		public override void OnEnter ()
		{
				SequenceTesting._instance.eventFinished += eventFinished;


//		Debug.LogWarning ("askjdkajsd");
				ExecuteSequence (_leftSequence);
				ExecuteSequence (_rightSequence);

//		Continue (_leftSequence);
//		Continue (_rightSequence);
		}

		public override void GetConnectedSequences (ref List<Fungus.Sequence> connectedSequences)
		{
				//if (targetSequence != null)
				{
						connectedSequences.Add (_leftSequence);
						connectedSequences.Add (_rightSequence);
				}		
		}

		// Use this for initialization
		void Start ()
		{
	
		}
	
		// Update is called once per frame
		void Update ()
		{
	
		}
}
