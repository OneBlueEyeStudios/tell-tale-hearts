using UnityEngine;
using System.Collections;

using Fungus;

[CommandInfo("Scripting", 
             "Wait Click", 
             "Wait for click.")]
public class WaitForClick : Command {


	public override void  OnEnter()
	{

	}
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	if (Input.GetButtonDown ("Fire1"))
						Continue ();
	}
}
