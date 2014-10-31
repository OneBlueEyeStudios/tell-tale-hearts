using UnityEngine;
using System.Collections;
using Fungus;

[CommandInfo("Scripting", 
             "AsyncBlock", 
             "Runs everything inside block asynchronously")]
public class AsyncBlock : Command {

	public override void OnEnter()
	{
		Fungus.Sequence sequence = GetSequence();

		int index = sequence.commandList.IndexOf (this);

		for(int i = index; i < sequence.commandList.Count;i++)
		{
			if(sequence.commandList[i].GetType() == typeof(EndAsyncBlock))
				break;

			Continue(sequence.commandList[i]);
		}
	}

	public override int GetPostIndent()
	{
		return 1;
	}
}
