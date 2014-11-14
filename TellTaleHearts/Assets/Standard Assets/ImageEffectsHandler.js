#pragma strict

var vignette : Vignetting;

function Start () {

}

function Update () {

}

function UpdateSuspicion(suspicion : int)
{
//Debug.Log("aksjdaksjda");

	vignette.chromaticAberration = Mathf.Lerp(1,5,suspicion);
}