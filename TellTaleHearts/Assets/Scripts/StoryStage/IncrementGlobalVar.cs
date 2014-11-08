using UnityEngine;
using System.Collections;
using Fungus;


[CommandInfo("Scripting", 
             "Increment Global Var", 
             "Increment Global Var")]
public class IncrementGlobalVar : Command {



	public string _globalVar;
	public int _increment;

	
	public override void OnEnter()
	{
		StageManager._instance.incrementGlobalVar (_globalVar, _increment);

		Continue ();
	}


	public override string GetSummary()
	{
		if(_globalVar!=null && _increment!=null)
			return "Set: "+_globalVar +"+="+_increment;
		return "";
	}
	
}
