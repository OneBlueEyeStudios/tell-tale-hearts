using UnityEngine;
using System.Collections;

public class Item2D : Item {

	
	override public void putInInventory ()
	{
		CharInventory._instance.addToInventory (this);
		gameObject.SetActive (false);
	}
	override public void grabbed ()
	{
		GetComponent<FaceCameraQuad> ().enabled = false;
	}
	override public void released ()
	{
		GetComponent<FaceCameraQuad> ().enabled = true;
	}

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
