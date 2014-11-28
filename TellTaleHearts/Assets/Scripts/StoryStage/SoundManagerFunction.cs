using UnityEngine;
using System.Collections;
using Fungus;

[CommandInfo("Scripting", 
             "SoundManagerFunction", 
             "SoundManagerFunction")]
public class SoundManagerFunction : Command {

	public enum endingType {arrest,confess,escape}

	public endingType _endingType;

	public override void OnEnter()
	{
		switch (_endingType) {
				case endingType.arrest:
						SoundManager._instance.playUnderArrestSuspicion ();
						break;
				case endingType.confess:
						break;
				case endingType.escape:
						SoundManager._instance.playEscapeSuspicion ();
						break;
				}
		

		Continue ();
	}

}
