using UnityEngine;
using System.Collections;
using Fungus;

[CommandInfo("Scripting", 
             "Search Clue", 
             "Cop search a clue")]
public class SearchClue : Command {

	public string _clueName;

	public override void OnEnter()
	{

		SequenceTesting._instance.searchForClue (_clueName);


		Continue ();

	}
	
	
	public override string GetSummary()
	{
		if(_clueName!=null)
			return "Search for clue" +"->"+ _clueName;
		else
			return "";
	}
}
