
using System.Collections;
using System.Collections.Generic;

[System.Serializable]
public class TweePassage {


	public string title;
	//public string[] tags;
	public List<TweeTag> tags;
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

	public void addTags (List<TweeTag> tags)
	{
		this.tags = tags;
	}

	public string getDialogue ()
	{
		foreach (TweeTag tag in tags)
			if (tag.key == Constants.CUE_TAG)
				return tag.value;

		return null;
	}

	public string getCop ()
	{
		foreach (TweeTag tag in tags)
			if (tag.key == Constants.COP_TAG)
				return tag.value;

		return null;
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