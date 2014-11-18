using UnityEngine;
using System.Collections;

public class ImageEffectsHandlerC : MonoBehaviour {

	public TwirlEffect _twirl;
	public MotionBlur _motionBlur;
	int _suspicion;

	float _twirlAngle;

	public float blurLevel0 = 0;
	public float blurLevel1 = 0.3f;
	public float blurLevel2 = 0.5f;
	public float blurLevel3 = 0.7f;
	public float blurLevel4 = 1;
	public float blurLevel5 = 1.4f;

	public float twirlLevel0 = 0;
	public float twirlLevel1 = 2;
	public float twirlLevel2 = 6;
	public float twirlLevel3 = 12;
	public float twirlLevel4 = 14;
	public float twirlLevel5 = 20;

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
		case 0:
			StartCoroutine(upTwirlEffect (twirlLevel0));
			StartCoroutine(upMotionBlur(blurLevel0));
			break;
				case 1:
			StartCoroutine(upTwirlEffect (twirlLevel1));
			StartCoroutine(upMotionBlur(blurLevel1));
			//
						break;
				case 2:
			StartCoroutine(upTwirlEffect (twirlLevel2));
			StartCoroutine(upMotionBlur(blurLevel2));
						break;
				case 3:
			StartCoroutine(upTwirlEffect (twirlLevel3));
			StartCoroutine(upMotionBlur(blurLevel3));
						break;
				case 4:
			StartCoroutine(upTwirlEffect (twirlLevel4));
			StartCoroutine(upMotionBlur(blurLevel4));
						break;
				case 5:
			StartCoroutine(upTwirlEffect (twirlLevel5));
			StartCoroutine(upMotionBlur(blurLevel5));
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
