using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Lightable : MonoBehaviour {

	List<Shader> _initialShaders;

	Shader _rimShader;

	bool _lighted;

	// Use this for initialization
	void Start () {
		_initialShaders = GetAllShaders ();
		_rimShader = Shader.Find ("Custom/GlowItem");

	}

	List<Renderer> GetAllRenderers ()
	{
		List<Renderer> renderers = new List<Renderer> ();
		
		Renderer r = GetComponent<Renderer> ();
		if (r != null)
			renderers.Add (r);
		
		//Renderer[] childRenderers = 
		
		//foreach (Renderer rend in childRenderers) {
			renderers.AddRange (GetComponentsInChildren<Renderer> ());
		//}

		return renderers;
	}

	List<Shader> GetAllShaders ()
	{
		List<Shader> shaders = new List<Shader> ();

		Renderer r = GetComponent<Renderer> ();
		if (r != null)
			shaders.Add (r.material.shader);

		Renderer[] childRenderers = GetComponentsInChildren<Renderer> ();

		foreach (Renderer rend in childRenderers) {
			shaders.Add (rend.material.shader);
				}

		return shaders;
	}

	void setAllShadersRim ()
	{
		List<Renderer> allRenderers = GetAllRenderers ();
		foreach (Renderer r in allRenderers) 
		{
			//r.material.shader = _rimShader;

			Color newColor = r.material.color;
			newColor.r += 0.4f;
			r.material.color = newColor;
			//r.material.color -= new Color(0.0f,0.0f,0.2f,0.0f);
			//r.material.color = Color.red;
		}
	}

	public void lightUp()
	{
		if (_lighted)
						return;

		_lighted = true;
			
		Debug.LogWarning ("Light up!");
		setAllShadersRim ();
		
	}

	void returnDefaultShaders ()
	{
		List<Renderer> allRenderers = GetAllRenderers ();
		for(int i = 0; i < allRenderers.Count; i++)
		
		{
			//allRenderers[i].material.shader = _initialShaders[i];

			//allRenderers[i].material.color += new Color(0.0f,0.0f,0.2f,0.0f);
			//allRenderers[i].material.color += new Color(0.0f,0.0f,0.2f,0.0f);
			Color newColor = allRenderers[i].material.color;
			newColor.r -= 0.4f;
			allRenderers[i].material.color = newColor;


		}
	}

	public void unlight()
	{
		if (!_lighted)
			return;

		_lighted = false;

		Debug.LogWarning ("Unlight!");
		returnDefaultShaders ();
	}

	// Update is called once per frame
	void Update () {
	
	}
}
