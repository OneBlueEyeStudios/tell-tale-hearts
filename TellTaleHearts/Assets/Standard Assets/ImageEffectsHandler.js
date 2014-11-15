#pragma strict

var vignette : Vignetting;
var fishEye : Fisheye;
var bloom : Bloom;

var _suspicion : int;

function Start () {

}

function Update () {

}

function UpdateSuspicion(suspicion : int)
{
	if(suspicion!=_suspicion)
		triggerSuspicionChange(suspicion);
	//vignette.chromaticAberration = Mathf.Lerp(1,20,suspicion);
	
}

function upFishEye(levelX: float,levelY: float)
{
	var elapsed : float = 0;
	var duration = 1;
	var startX = fishEye.strengthX;
	var startY = fishEye.strengthY;
	
	
	
	while(elapsed < duration)
	{
		var t = elapsed/duration;

		fishEye.strengthX = Mathf.Lerp(startX,levelX,t);
		fishEye.strengthY = Mathf.Lerp(startY,levelY,t);
		
		elapsed += Time.deltaTime;
		
		yield;
	}
}

function upBloom(target: float)
{
	var elapsed : float = 0;
	var duration = 1;
	var start = bloom.bloomIntensity;
	
	
	
	while(elapsed < duration)
	{
		var t = elapsed/duration;

		bloom.bloomIntensity = Mathf.Lerp(start,target,t);
		
		elapsed += Time.deltaTime;
		
		yield;
	}
}

function upVignette(level: int)
{
	var elapsed : float = 0;
	var duration = 1;
	var start = vignette.intensity;
	
	
	
	while(elapsed < duration)
	{
		var t = elapsed/duration;
	
		vignette.intensity = Mathf.Lerp(start,level,t);
		
		elapsed += Time.deltaTime;
		
		yield;
	}
}

function triggerSuspicionChange(suspicion : int)
{
	
	_suspicion = suspicion;
	
	switch(_suspicion)
	{
	case 1:
		upVignette(3);
		upBloom(0.5f);
		//upFishEye(0.1,0.1);
		//
	break;
	case 2:
		upVignette(4);
		upBloom(1);
		//upFishEye(0.2,0.2);
	break;
	case 3:
			upVignette(5);
			upBloom(2);
	break;
	case 4:
			upVignette(6);
			upBloom(3);
	break;
	case 5:
			upVignette(8);
			upBloom(5);
	break;
	
	
	}

}