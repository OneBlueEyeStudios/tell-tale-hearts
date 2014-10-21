using UnityEngine;
using System.Collections;

public class FOVTester : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
		float scrollwheel = Input.GetAxis ("Mouse ScrollWheel");

		Camera.main.fieldOfView += scrollwheel;// * Time.deltaTime;
	}
}
