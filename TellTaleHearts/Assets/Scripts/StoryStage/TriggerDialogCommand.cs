using UnityEngine;
using System.Collections;
using Fungus;

[CommandInfo("Scripting", 
             "Trigger Dialog", 
             "Triggers a dialog.")]
public class TriggerDialogCommand : Command {

	public string _dialogID;
	public string _startingPassage = "Start";

	public override void OnEnter ()
	{
		
		DialogueHandler._instance.dialogueEnded += dialogueEnded;
		DialogueHandler._instance.startDialogue (_dialogID,_startingPassage);
	}

	void dialogueEnded (object sender, System.EventArgs e)
	{
		DialogueHandler._instance.dialogueEnded -= dialogueEnded;

		Continue ();
		
	}
	
	public override string GetSummary()
	{
		return _dialogID +"->"+ _startingPassage;
	}
}
