using UnityEngine;
using System.Collections;
using Fungus;

[CommandInfo("Scripting", 
             "Trigger Stage Dialog", 
             "Trigger Stage Dialog.")]
public class TriggerStageDialog : Command {

	public string _dialogID;
	//public string _startingPassage = "Start";

	 string _titleSufix = "Stage ";

	public override void OnEnter ()
	{
		
		DialogueHandler._instance.dialogueEnded += dialogueEnded;

		DialogueHandler._instance.startDialogue (_dialogID,_titleSufix+ StageManager._instance._globalVars[Constants.CURRENT_STAGE]);

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
