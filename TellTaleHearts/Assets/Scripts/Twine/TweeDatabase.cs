using UnityEngine;
using System.Collections;
using System.Collections.Generic;

[System.Serializable]
public class TweeDialogue
{
	public string _id;
	public List<string> _titles;
	public List<TweePassage> _passages;

	public TweePassage getPassage (string passageName)
	{
		if (hasPassage (passageName))
			return _passages [indexOfPassage (passageName)];

		return null;
	}

	public TweeDialogue(string id)
	{
		init ();

		
	}

	public TweeDialogue(string id,List<string> titles, List<TweePassage> passages)
	{
		init ();

		_id = id;
		_titles = titles;
		_passages = passages;

		}

	void init()
	{
		_titles = new List<string> ();
		_passages = new List<TweePassage> ();
	}
	
	void clearPassages()
	{
		init ();
	}
	
	public void setPassages(List<TweePassage> passages)
	{
		foreach (TweePassage passage in passages) 
		{
			if(!hasPassage(passage.title))
				addNewPassage(passage.title,passage);
			else
				updatePassage(passage.title,passage);

		}
	}
	
	
	void updatePassage(string title, TweePassage newPassage)
	{
		if (_titles == null)
			init ();
		
		_passages [indexOfPassage (title)] = newPassage;
		
	}
	
	public void addNewPassage (string title, TweePassage newPassage)
	{
		if (_titles == null)
			init ();
		
		_titles.Add (title);
		_passages.Add (newPassage);
	}
	
	bool hasPassage(string title)
	{
		if (_titles == null)
			init ();
		
		return _titles.Contains (title);
	}
	
	int indexOfPassage(string title)
	{
		if (_titles == null)
			init ();
		
		return _titles.IndexOf (title);
	}


}

[System.Serializable]
public class TweeDatabase : ScriptableObject {

	public List<TweeDialogue> _dialogues;
	public List<string> _dialogueIDs;

	public TweeDialogue getDialogue (string filename)
	{
		if (hasDialogue (filename))
						return _dialogues [indexOfDialogue (filename)];

		return null;
	}

	public void removeIfContainsDialogue (string filename)
	{
		if (hasDialogue(filename)) 
		{
			removeDialogue(filename);
		}
	}

	void removeDialogue (string filename)
	{
		int index = indexOfDialogue (filename);

		_dialogues.RemoveAt (index);
		_dialogueIDs.RemoveAt (index);
	}
	
	void init()
	{
		_dialogueIDs = new List<string> ();
		_dialogues = new List<TweeDialogue> ();
	}
	
	void clearDialogues()
	{
		init ();
	}
	
	public void setDialogues(List<TweeDialogue> dialogues)
	{
		foreach (TweeDialogue dialogue in dialogues) 
		{
			if(!hasDialogue(dialogue._id))
				addNewDialogue(dialogue._id,dialogue);
			else
				updateDialogue(dialogue._id,dialogue);
			
		}
	}
	
	
	void updateDialogue(string id, TweeDialogue newDialogue)
	{

		
		Debug.LogWarning ("Warning: Updating dialogue with id: " + id);
		_dialogues [indexOfDialogue (id)] = newDialogue;
	}
	
	public void addNewDialogue (string id, TweeDialogue newDialogue)
	{
		if (_dialogues == null)
						init ();

		_dialogueIDs.Add (id);
		_dialogues.Add (newDialogue);
	}

	bool hasDialogue(string title)
	{
		if (_dialogues == null)
			init ();
		
		return _dialogueIDs.Contains (title);
	}
	
	int indexOfDialogue(string title)
	{
		if (_dialogues == null)
			init ();
		
		return _dialogueIDs.IndexOf (title);
	}


}
