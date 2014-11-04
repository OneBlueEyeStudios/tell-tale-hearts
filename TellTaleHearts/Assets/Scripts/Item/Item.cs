using UnityEngine;
using System.Collections;

public abstract class Item : MonoBehaviour {

	public string _description;
	public Vector3 _frontFacing;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public abstract void putInInventory ();
}
