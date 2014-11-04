using UnityEngine;
using System.Collections;

[RequireComponent (typeof (AudioSource))]

public class VideoController : MonoBehaviour {

	public MovieTexture movie;

	// Use this for initialization
	void Start () {

		renderer.material.mainTexture = movie as MovieTexture;
		audio.clip = movie.audioClip;
		movie.Play ();
		audio.Play();
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
