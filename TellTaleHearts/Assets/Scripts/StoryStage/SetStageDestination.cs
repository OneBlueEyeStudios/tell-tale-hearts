using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using Fungus;

[CommandInfo("Scripting", 
             "Set Stage Destination", 
             "Set Current Stage Destination for a cop")]
public class SetStageDestination : Command {

	//public CopType _copType;
	//public string _stageDescription;
	//public Transform _node;

	public CopType _copType;
	//public ClueType _clueType;
	public int _waitTimePerNode;
	public bool _loop;
	public bool _useChildrenNodes;


	void pathFinished (CopType agent)
	{
	
		if (_copType == agent) {
						SequenceTesting._instance.pathFinished -= pathFinished;

						Continue ();
				}		
	}


	public override void OnEnter()
	{

		Debug.LogWarning ("set stage!");
		SequenceTesting._instance.pathFinished += pathFinished;


		//SequenceTesting._instance.MoveCharacterListToCurrentClue (_copType,_waitTimePerNode);

		SequenceTesting._instance.MoveCopCurrentStage (_copType,_waitTimePerNode,_useChildrenNodes, _loop);

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
