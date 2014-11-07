using UnityEngine;
using System.Collections;
using Fungus;


[CommandInfo("Scripting", 
             "TriggerNextStage", 
             "TriggerNextStage")]
public class TriggerNextStage : Command {
	

	public override void OnEnter()
	{
		//bool isSpeaking = GetSequence ().GetFungusScript ().GetBooleanVariable ("SpeakingCop");

		StageManager._instance.triggerNextStage (GetSequence().GetFungusScript());
		/*
		if (GetSequence ().GetFungusScript().GetBooleanVariable ("SpeakingCop")) 
		{


		}
*/
	}


	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
