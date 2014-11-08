
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
	public void addNewTransition(string title, string tag, string dialogue,List<TweeTag> tags)
	{
		transitions.Add(new TweeTransition(title,tag, dialogue,tags));
	}

}

[System.Serializable]
public class TweeTag
{
	public string key, value;

	public TweeTag(string key, string value)
	{
		this.key = key;
		this.value = value;
	}
}

[System.Serializable]
public class TweeTransition
{
	public string passageTag;
	public string name;
	public string dialogue;
	public List<TweeTag> tags;

	public TweeTransition(string name, string passageTag, string dialogue,List<TweeTag> tags)
			{
				this.name = name;
				this.passageTag = passageTag;
				this.dialogue = dialogue;
				this.tags = tags;
			}
}