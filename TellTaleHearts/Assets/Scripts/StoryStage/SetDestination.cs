using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using Fungus;

[System.Serializable]
public class CopDestination
{
	public CopType _copType;
	///public string _stageDescription;
	public Transform _node;
}

[CommandInfo("Scripting", 
             "Set Destination", 
             "Set Destination for a cop")]
public class SetDestination : Command {

	//public CopType _copType;
	//public string _stageDescription;
	//public Transform _node;

	public List<CopDestination> _copDestination;

	int arrived = 0;

	void pathFinished (CopType agent)
	{
	
		//Debug.LogWarning ("Path finished!");

		//SequenceTesting._instance.pathFinished -= pathFinished;

		arrived++;
		if (arrived == _copDestination.Count) {
						SequenceTesting._instance.pathFinished -= pathFinished;

						Continue ();
				}
	}

	//public List<Sequence> _path;

	public override void OnEnter()
	{
		SequenceTesting._instance.pathFinished += pathFinished;

		foreach(CopDestination destination in _copDestination)

			SequenceTesting._instance.MoveCharacter (destination._copType, destination._node.position);
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
