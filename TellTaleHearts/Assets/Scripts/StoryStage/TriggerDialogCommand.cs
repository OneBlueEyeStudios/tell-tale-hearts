using UnityEngine;
using System.Collections;
using Fungus;

[CommandInfo("Scripting", 
             "Trigger Dialog", 
             "Triggers a dialog.")]
public class TriggerDialogCommand : Command {

	public string _dialogID;
	public string _startingPassage = "Start";
	[HideInInspector]
	public Variable _variable;

	public override void OnEnter ()
	{
		
		DialogueHandler._instance.dialogueEnded += dialogueEnded;

		StringVariable stringVar = _variable as StringVariable;

		if(stringVar!=null)
		DialogueHandler._instance.startDialogue (_dialogID,stringVar.Value);
		else
		DialogueHandler._instance.startDialogue (_dialogID,_startingPassage);
	}

	void dialogueEnded (object sender, System.EventArgs e)
	{
		DialogueHandler._instance.dialogueEnded -= dialogueEnded;

		Debug.LogWarning ("Dialogue Ended.");
		Invoke ("Continue", 3);


		
	}
	
	public override string GetSummary()
	{
		return _dialogID +"->"+ _startingPassage;
	}
}
