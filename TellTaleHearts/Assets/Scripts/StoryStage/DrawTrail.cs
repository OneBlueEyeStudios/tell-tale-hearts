using UnityEngine;
using System.Collections;
using Fungus;


[CommandInfo("Scripting", 
             "DrawTrail", 
             "DrawTrail")]
public class DrawTrail : Command {


	public Transform _start, _end;
	public CopType _copType;
	
	public override void OnEnter()
	{
		StageManager._instance.DrawPlayerPath (_start, _end,_copType);

		Continue ();
	}

}
