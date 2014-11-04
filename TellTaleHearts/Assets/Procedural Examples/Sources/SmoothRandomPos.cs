using UnityEngine;
using System.Collections;


public class SmoothRandomPos : MonoBehaviour {

	public float speed = 1f;
	public Vector3 range = Vector3.one;
	
	private Perlin noise = new Perlin();
	private Vector3 originalPosition;
	private Vector3 position;

	private Vector3 distanceFromPlayer;
	public Transform player;

	void Awake()
	{
		originalPosition = transform.position;

	}

	public void returnToOriginalPos()
	{

		//Vector3 newPos = distanceFromPlayer + player.transform.position;
		//transform.position = newPos;
		//iTween.MoveTo (gameObject, newPos, 1f);
		//transform.position = originalPosition;
	}

	// Use this for initialization
	void Start () {
		position = transform.position;
		distanceFromPlayer = player.transform.position - transform.position;
	}
	
	// Update is called once per frame
	void Update () {
		transform.position = position + Vector3.Scale(SmoothRandom.GetVector3(speed), range);
	}
}
