using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using Fungus;


[CommandInfo("Scripting", 
             "Set Transform Destination", 
             "Set Transform Destination for a cop")]
public class SetTransformDestination : Command {

	//public CopType _copType;
	//public string _stageDescription;
	//public Transform _node;

	public List<CopDestination> _copDestination;

	//public CopType _copType;
	//public Transform _node;
	//public int _waitTimePerNode;


	int arrived = 0;

	void pathFinished (CopType agent)
	{
	
		arrived++;
		//		Debug.LogWarning ("arrived:"+arrived+"     _copDestination.Count"+_copDestination.Count);
		if (arrived >= _copDestination.Count) {
			SequenceTesting._instance.pathFinished -= pathFinished;
			
			arrived=0;
			Continue ();
		}

	}

	//public List<Sequence> _path;

	public override void OnEnter()
	{


		SequenceTesting._instance.pathFinished += pathFinished;

		foreach (CopDestination destination in _copDestination) 
		{
			SequenceTesting._instance.MoveCopTrack(destination._copType,destination._node);//MoveCharacterTrack (destination._copType, destination._node);
			
		}

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
