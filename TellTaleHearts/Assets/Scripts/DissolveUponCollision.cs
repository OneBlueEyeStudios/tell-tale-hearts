using UnityEngine;
using System.Collections;

public class DissolveUponCollision : MonoBehaviour {

	public Renderer[] _renderers;

	public float _duration = 2;

	void solve()
	{
		//Renderer[] allRenderers =go.GetComponentsInChildren<Renderer> ();
		
		foreach (Renderer r in _renderers) 
		{
			StartCoroutine(changeMaterialValue(r,0,"_Alpha"));
			//iTween.FadeTo(r.gameObject,1,_duration);
		}
		
	}

	void dissolve()
	{
		//Renderer[] allRenderers =go.GetComponentsInChildren<Renderer> ();

		foreach (Renderer r in _renderers) 
		{
			StartCoroutine(changeMaterialValue(r, 1,"_Alpha"));
			//iTween.FadeTo(r.gameObject,0,_duration);
		}
			
	}

	IEnumerator changeMaterialValue (Renderer r, int i, string alpha)
	{
		float duration = 2;
		float elapsed = 0;

		float start = r.material.GetFloat (alpha);

		while (elapsed < duration) 
		{
			float t = elapsed/duration;

			r.material.SetFloat(alpha, Mathf.Lerp(start,i,t));

			elapsed += Time.deltaTime;

			yield return null;

				}
	}

	// Use this for initialization
	void Start () {
	
	}

	void OnTriggerEnter(Collider col)
	{
		if (col.CompareTag ("Player")) 
		{
			dissolve ();
		}
	}

	void OnTriggerExit(Collider col)
	{
		if (col.CompareTag ("Player")) 
		{
			solve ();
		}
	}
	
	// Update is called once per frame
	void Update () {

	}
}
