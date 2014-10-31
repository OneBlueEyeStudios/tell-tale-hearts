﻿using UnityEngine;
using System.Collections;

public class FaceCamera : MonoBehaviour {

	public Camera _camera;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
		Vector3 sameHeight = _camera.transform.position;

		sameHeight.y = transform.position.y;



		Vector3 dir = sameHeight - transform.position;

		transform.forward = dir.normalized;
	}
}
