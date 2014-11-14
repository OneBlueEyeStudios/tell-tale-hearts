using UnityEngine;
using System.Collections;

public class HeadBob2 : MonoBehaviour {

	private float timer = 0.0f; 
	public float bobbingSpeed = 0.18f; 
	public float bobbingAmount = 0.2f; 
	public float midpoint = 2.0f; 

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		float waveslice = 0.0f; 
		float horizontal = Input.GetAxis("Horizontal"); 
		float vertical = Input.GetAxis("Vertical"); 
		if (Mathf.Abs(horizontal) == 0 && Mathf.Abs(vertical) == 0) { 
			timer = 0.0f; 
		} 
		else { 
			waveslice = Mathf.Sin(timer); 
			timer = timer + bobbingSpeed; 
			if (timer > Mathf.PI * 2) { 
				timer = timer - (Mathf.PI * 2); 
			} 
		} 
		if (waveslice != 0) { 
			float translateChange = waveslice * bobbingAmount; 
			float totalAxes = Mathf.Abs(horizontal) + Mathf.Abs(vertical); 
			totalAxes = Mathf.Clamp (totalAxes, 0.0f, 1.0f); 
			translateChange = totalAxes * translateChange; 

			Vector3 newPos = transform.localPosition;
			newPos.y = midpoint + translateChange; 
			transform.localPosition = newPos;
			//transform.localPosition.y = midpoint + translateChange; 
		} 
		else {
			Vector3 newPos = transform.localPosition;
			newPos.y = midpoint; 
			transform.localPosition = newPos;
			//transform.localPosition.y = midpoint; 
		} 
	}
}

