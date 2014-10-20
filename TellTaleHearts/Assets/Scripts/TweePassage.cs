
using System.Collections;
using System.Collections.Generic;

[System.Serializable]
public class TweePassage {


	public string title;
	public string[] tags;
	public List<TweeTransition> transitions;
	public string body;
	public string dialogue;

	public TweePassage()
	{
		transitions = new List<TweeTransition> ();
	}
	public void addNewTransition(string title, string tag, string dialogue)
	{
		transitions.Add(new TweeTransition(title,tag, dialogue));
	}

}

[System.Serializable]
public class TweeTransition
{
	public string passageTag;
	public string name;
	public string dialogue;

			public TweeTransition(string name, string passageTag, string dialogue)
			{
				this.name = name;
				this.passageTag = passageTag;
		this.dialogue = dialogue;
			}
}