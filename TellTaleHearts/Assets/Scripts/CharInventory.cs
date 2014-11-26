using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class CharInventory : MonoBehaviour {



	public static CharInventory _instance;

	void Awake()
	{
		_instance = this;
	}

	public List<Item> _inventory;

	bool closeToCop ()
	{
		float distance = 5;

		if (Vector3.Distance (CharView._instance.transform.position, StageManager._instance._badCop.transform.position) < distance ||
						Vector3.Distance (CharView._instance.transform.position, StageManager._instance._goodCop.transform.position) < distance)
						return true;
		return false;
	}

	public void addToInventory(Item i)
	{
		if(closeToCop())
		//if (_inventory.Count >= 3) 
		{
			SoundManager._instance.playSoundAtPosition("event:/dialogue/massive dialogues/81",CharView._instance.transform);
			StageManager._instance.incrementGlobalVar(Constants.SUSPICION,1);
		}
		_inventory.Add (i);
	}

	public void removeFromInventory(Item i)
	{
		_inventory.Remove (i);
	}

	public bool hasOnInventory(string itemName)
	{
		foreach (Item item in _inventory) 
		{
			if(item._description==itemName)
				return true;
		}
		return false;
	}

	// Use this for initialization
	void Start () {
		_inventory = new List<Item> ();
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
