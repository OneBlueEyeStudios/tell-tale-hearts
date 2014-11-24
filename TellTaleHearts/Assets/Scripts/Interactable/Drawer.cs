using UnityEngine;
using System.Collections;

public class Drawer : Interactable {

	Animator _animator;

	bool _isClosed = true;
	

	// Use this for initialization
	void Start () {
		_animator = GetComponent<Animator> ();

		setContainedItemEnabled (false);
		
	}
	
	void OnDisable()
	{

	}
	
	// Update is called once per frame
	void Update () {
		
	}
	
	override public void interact()
	{
		if (_isClosed)
			open ();
		else
			close ();
	}

	void setContainedItemEnabled(bool enabled)
	{
		Item[] allInnerItem = GetComponentsInChildren<Item> ();
		foreach (Item item in allInnerItem) 
		{
			item._canInteract = enabled;
		}

		}

	void open ()
	{
		setContainedItemEnabled (true);

		Debug.LogWarning ("Open Drawer");

		_animator.SetTrigger ("Open");
		_isClosed = false;
		
		//SoundManager._instance.playSoundAtPositionAndParameter ("event:/household/door",transform,"door",0.5f);

	}
	
	void close ()
	{
		setContainedItemEnabled (false);


		Debug.LogWarning ("Close Drawer");

		_animator.SetTrigger ("Close");
		_isClosed = true;
		

		//SoundManager._instance.playSoundAtPositionAndParameter ("event:/household/door",transform,"door",9.5f);

		
	}

}
