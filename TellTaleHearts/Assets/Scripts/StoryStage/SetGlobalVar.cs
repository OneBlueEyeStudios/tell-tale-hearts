using UnityEngine;
using System.Collections;
using Fungus;


[CommandInfo("Scripting", 
             "Set Global Var", 
             "Set Global Var")]
public class SetGlobalVar : Command {


	public string _globalVar;
	public int _value;

	
	public override void OnEnter()
	{
		StageManager._instance.setGlobalVar (_globalVar, _value);

		Continue ();
	}


	public override string GetSummary()
	{
		if(_globalVar!=null && _value!=null)
			return "Set: "+_globalVar +"="+_value;
		return "";
	}
	
}
