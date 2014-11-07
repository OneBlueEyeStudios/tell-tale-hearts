using UnityEngine;
using System.Collections;
using Fungus;

[CommandInfo("Scripting", 
             "Play Fungus", 
             "Play another Fungus.")]
public class PlayFungus : Command {

	public CopType _copType;
	public string _sequenceName;


	public override void OnEnter ()
	{
		StageManager._instance.playSequence (_copType, _sequenceName);

		Continue ();
	}
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
