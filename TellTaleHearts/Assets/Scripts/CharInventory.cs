﻿using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class CharInventory : MonoBehaviour {

	public static CharInventory _instance;

	void Awake()
	{
		_instance = this;
	}

	public List<Item> _inventory;

	public void addToInventory(Item i)
	{
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
