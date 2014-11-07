using UnityEngine;
using System.Collections;
using Fungus;

[CommandInfo("Scripting", 
             "Trigger Stage Dialog", 
             "Trigger Stage Dialog.")]
public class TriggerStageDialog : Command {

	public string _dialogID;
	//public string _startingPassage = "Start";


	public override void OnEnter ()
	{
		
		DialogueHandler._instance.dialogueEnded += dialogueEnded;

		DialogueHandler._instance.startDialogue (_dialogID,"Stage "+StageManager._instance._globalVars["CurrentStage"]);

	}

	void dialogueEnded (object sender, System.EventArgs e)
	{
		DialogueHandler._instance.dialogueEnded -= dialogueEnded;

		Debug.LogWarning ("Dialogue Ended.");
		Invoke ("Continue", 3);


		
	}
	
	public override string GetSummary()
	{
		return "";//_dialogID +"->"+ _startingPassage;
	}
}
