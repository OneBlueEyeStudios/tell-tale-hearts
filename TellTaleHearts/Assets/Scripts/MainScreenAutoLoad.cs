using UnityEngine;
using System.Collections;

public class MainScreenAutoLoad : MonoBehaviour {

	public float maxDelay;
	private float timer = 0.0f;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {


		if(timer < maxDelay)
		{
			timer += Time.deltaTime;
		}
		else
		{
			//Application.LoadLevel("NewMainScreen");
			Application.LoadLevel("GameScene");
		}
	
	}
}
