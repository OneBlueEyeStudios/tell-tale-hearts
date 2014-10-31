using UnityEngine;
using System.Collections;
using Fungus;

[CommandInfo("Scripting", 
             "EndAsyncBlock", 
             "End block asynchronously")]
public class EndAsyncBlock : Command {

	public override void OnEnter()
	{
	//	Continue ();
	}

	public override int GetPostIndent()
	{
		return -1;
	}
}
