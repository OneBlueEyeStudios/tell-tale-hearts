using UnityEngine;
using System.Collections;

public class BallItem : Item {

	
	override public void putInInventory ()
	{
		CharInventory._instance.addToInventory (this);
		gameObject.SetActive (false);
	}

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
