using UnityEngine;
using System.Collections;

public abstract class Item : MonoBehaviour {

	public bool _canInteract = true;
	public string _description;
	public Vector3 _defaultFacing = Vector3.zero;
	public Vector3 _frontFacing;
	public bool _rotateWhenRelease = true;
	public bool _overrideGrabDistance;
	public float _grabDistance;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public abstract void putInInventory ();
	public abstract void grabbed ();
	public abstract void released ();
}
