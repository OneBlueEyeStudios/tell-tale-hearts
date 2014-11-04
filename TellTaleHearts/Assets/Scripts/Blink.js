#pragma strict

var topLid : GameObject;
var bottomLid : GameObject;

function Start () {

	topLid = GameObject.Find("EyeLid_Top");
	bottomLid = GameObject.Find("EyeLid_Bottom");

}

function Update () {
	
	if(Input.GetMouseButtonDown(0))
	{
		topLid.animation.Play("BlinkTop");
		bottomLid.animation.Play("BlinkBottom");
	}
}