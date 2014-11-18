#pragma strict

var vignette : Vignetting;
//var fishEye : Fisheye;
var bloom : Bloom;

var bloomLevel0 = 0;
var bloomLevel1 = 0;
var bloomLevel2 = 0.25f;
var bloomLevel3 = 0.4f;
var bloomLevel4 = 0.6f;
var bloomLevel5 = 0.9f;

var vignetteLevel0 = 2;
var vignetteLevel1 = 3;
var vignetteLevel2 = 4;
var vignetteLevel3 = 5;
var vignetteLevel4 = 6;
var vignetteLevel5 = 8;

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
/*
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
*/
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
		case 0:
		upVignette(vignetteLevel0);
		upBloom(bloomLevel0);
		//upFishEye(0.1,0.1);
		//
	break;
	case 1:
		upVignette(vignetteLevel1);
		upBloom(bloomLevel1);
		//upFishEye(0.1,0.1);
		//
	break;
	case 2:
		upVignette(vignetteLevel2);
		upBloom(bloomLevel2);
		//upFishEye(0.2,0.2);
	break;
	case 3:
			upVignette(vignetteLevel3);
			upBloom(bloomLevel3);
	break;
	case 4:
			upVignette(vignetteLevel4);
			upBloom(bloomLevel4);
	break;
	case 5:
			upVignette(vignetteLevel5);
			upBloom(bloomLevel5);
	break;
	
	
	}

}