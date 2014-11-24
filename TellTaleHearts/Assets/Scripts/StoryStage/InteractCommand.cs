﻿using UnityEngine;
using System.Collections;
using Fungus;

[CommandInfo("Scripting", 
             "Interactable", 
             "Triggers interactable object")]
public class InteractCommand : Command {

	public Interactable _interactable;

	public override void OnEnter ()
	{
		Debug.LogError ("interact with: " + _interactable.name);
		_interactable.interact ();
		Continue ();
	}

	public override string GetSummary()
	{
		if(_interactable!=null)
		return _interactable.name;
		return "";
	}


}
