using UnityEngine;
using System.Collections;
using Fungus;

[CommandInfo("Scripting", 
             "SetCanInteractCommand", 
             "SetCanInteractCommand")]
public class SetCanInteractCommand : Command {

	public Interactable _interactable;
	public bool _canInteract;
	public override void OnEnter ()
	{
		if (_interactable.GetComponent<Lightable> () != null)
			_interactable.GetComponent<Lightable> ().enabled = true;
		_interactable._interactEnabled = _canInteract;
		Continue ();
	}

	public override string GetSummary()
	{
		if(_interactable!=null)
			return _interactable.name;
		return "";
	}


}
