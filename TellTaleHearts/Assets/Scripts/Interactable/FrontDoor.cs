using UnityEngine;
using System.Collections;

public class FrontDoor : Interactable {

	Animator _animator;

	#region implemented abstract members of Interactable
	public override void interact ()
	{
		//Destroy (this.gameObject);

		StageManager._instance.OnEventTrigger ("DoorOpen");

		_animator.Play ("OpenDoor");
	}
	#endregion

	// Use this for initialization
	void Start () {
		_animator = GetComponent<Animator> ();
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
