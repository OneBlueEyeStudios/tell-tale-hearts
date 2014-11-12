using UnityEngine;
using System.Collections;
using Fungus;

[CommandInfo("Scripting", 
             "TestNewMove", 
             "TestNewMove.")]
public class TestNewMove : Command {

	public CopType _copType;
	//public string _stage;
	public Transform _targetNode;
	public bool _shouldLoop;
	public bool _useChildren;
	public int _waitTimePerNode;


	void pathFinished (CopType agent)
	{
		if (agent == _copType) {
			
			SequenceTesting._instance.pathFinished -= pathFinished;

			Continue ();
		}
	}
	public override void OnEnter ()
	{
		SequenceTesting._instance.pathFinished += pathFinished;

		SequenceTesting._instance.testNewMove (_copType, _targetNode,_waitTimePerNode, _shouldLoop, _useChildren);
	}

}
