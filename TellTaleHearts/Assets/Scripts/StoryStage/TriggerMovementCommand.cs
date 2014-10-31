using UnityEngine;
using System.Collections;
using Fungus;

[CommandInfo("Scripting", 
             "Trigger Movement", 
             "Triggers Movements on a Cop.")]
public class TriggerMovementCommand : Command {


	public CopType _copType;
	public string _stage;



	void pathFinished (CopType agent)
	{
		if (agent == _copType) {
			
			SequenceTesting._instance.pathFinished -= pathFinished;

			Debug.LogWarning("oaksoaskoskoaskoaskasok");
						Continue ();
				}
	}
	public override void OnEnter ()
	{
		SequenceTesting._instance.pathFinished += pathFinished;
		SequenceTesting._instance.MoveCharacter (_copType, _stage);
	}

	public override string GetSummary()
	{
			return _copType +" "+ _stage;
	}
}
