using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using Fungus;

[CommandInfo("Scripting", 
             "Set Loop Stage Destination", 
             "Set Loop Current Stage Destination for a cop")]
public class SetLoopStageDestination : Command {

	//public CopType _copType;
	//public string _stageDescription;
	//public Transform _node;

	public CopType _copType;
	//public ClueType _clueType;
	public int _waitTimePerNode;

	void pathFinished (CopType agent)
	{

//		Debug.LogError("LOOP PATH FINISHED!!!!!!!!!:"+agent);
		
		if (_copType == agent) {

			Debug.LogError("LOOP PATH FINISHED!!!!!!!!!:"+agent);
			SequenceTesting._instance.pathFinished -= pathFinished;

						Continue ();


				}		
				
	}

	public override void OnEnter()
	{
		SequenceTesting._instance.pathFinished += pathFinished;


		Debug.LogError("LOOP PATH Started!!!!!!!!!:"+_copType);
		
		SequenceTesting._instance.MoveCharacterListToCurrentClue (_copType,_waitTimePerNode,true);

	}

	
	public override string GetSummary()
	{
//		if(_node!=null)
//			return _copType +"->"+ _node.name;
//		else
		return "";
	}

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
