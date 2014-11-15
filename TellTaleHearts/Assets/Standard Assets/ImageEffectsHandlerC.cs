using UnityEngine;
using System.Collections;

public class ImageEffectsHandlerC : MonoBehaviour {

	public TwirlEffect _twirl;
	public MotionBlur _motionBlur;
	int _suspicion;

	public 	float _twirlAngle;

	void Start()
	{
		//_twirlAngle = 30;
		StartCoroutine (twirl ());
	}

	IEnumerator twirl ()
	{
		float startTime = Time.time;
		while (true) 
		{
			float duration = 8;
			float elapsed = 0;



			float time = Time.time;//Mathf.Repeat(Time.time,Mathf.PI*2);
			_twirl.angle = Mathf.Sin(time/duration)*_twirlAngle;

//			Debug.LogWarning("Elapsed: "+(Time.time - startTime)+" __ Time: "+time);

			yield return null;
			/*

			while(elapsed < duration)
			{
				float t = elapsed/duration;

				_twirl.angle = Mathf.Lerp(_twirlAngle,-_twirlAngle,t);
				elapsed+= Time.deltaTime;
				yield return null;
			}

			elapsed = 0;
			
			while(elapsed < duration)
			{
				float t = elapsed/duration;
				
				_twirl.angle = Mathf.Lerp(-_twirlAngle,_twirlAngle,t);

				elapsed+= Time.deltaTime;
				yield return null;

			}
*/

		}
	}

	public void UpdateSuspicion(  int suspicion)
	{
		if(suspicion!=_suspicion)
			triggerSuspicionChange(suspicion);
		//vignette.chromaticAberration = Mathf.Lerp(1,20,suspicion);
		
	}
	
	void triggerSuspicionChange(int suspicion)
	{
		
				_suspicion = suspicion;
		
				switch (_suspicion) {
				case 1:
						StartCoroutine(upTwirlEffect (2));
			               StartCoroutine(upMotionBlur(0.3f));
			//
						break;
				case 2:
			               StartCoroutine(upTwirlEffect (6));
			               StartCoroutine(upMotionBlur(0.5f));
						break;
				case 3:
			               StartCoroutine(upTwirlEffect (12));
			               StartCoroutine(upMotionBlur(0.7f));
						break;
				case 4:
			               StartCoroutine(upTwirlEffect (15));
			               StartCoroutine(upMotionBlur(1f));
						break;
				case 5:
			               StartCoroutine(upTwirlEffect (20));
			               StartCoroutine(upMotionBlur(1.4f));
						break;
			
			
				}
		}

	IEnumerator upTwirlEffect(float target)
	{
		float elapsed = 0;
		float duration = 1;
		float start = _twirlAngle;
		
		
		
		while(elapsed < duration)
		{

			var t = elapsed/duration;
			
			_twirlAngle = Mathf.Lerp(start,target,t);
			
			elapsed += Time.deltaTime;
			
			yield return null;
		}
	}

	IEnumerator upMotionBlur(float target)
	{
		float elapsed = 0;
		float duration = 1;
		float start = _motionBlur.blurAmount;
		
		
		
		while(elapsed < duration)
		{
			var t = elapsed/duration;
			
			_motionBlur.blurAmount = Mathf.Lerp(start,target,t);
			
			elapsed += Time.deltaTime;
			
			yield return null;
		}
	}
}
