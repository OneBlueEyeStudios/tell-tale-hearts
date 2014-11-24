using UnityEngine;
using System.Collections;

public class DissolveObject : MonoBehaviour {


	void solve(GameObject go)
	{
		//Renderer[] allRenderers =go.GetComponentsInChildren<Renderer> ();
		
		//foreach (Renderer r in allRenderers) 
		{
			iTween.FadeTo(gameObject,1,1);
		}
		
	}

	void dissolve(GameObject go)
	{
		//Renderer[] allRenderers =go.GetComponentsInChildren<Renderer> ();

		//foreach (Renderer r in allRenderers) 
		{
			iTween.FadeTo(gameObject,0,1);
		}
			
	}

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if (Input.GetKeyDown (KeyCode.P))
						dissolve (gameObject);
		if (Input.GetKeyDown (KeyCode.O))
			solve (gameObject);
	}
}
