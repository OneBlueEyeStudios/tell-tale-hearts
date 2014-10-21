using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Lightable : MonoBehaviour {

	List<Shader> _initialShaders;

	Shader _rimShader;

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
			r.material.shader = _rimShader;
		}
	}

	public void lightUp()
	{
		setAllShadersRim ();
		
	}

	void returnDefaultShaders ()
	{
		List<Renderer> allRenderers = GetAllRenderers ();
		for(int i = 0; i < allRenderers.Count; i++)
		
		{
			allRenderers[i].material.shader = _initialShaders[i];
		}
	}

	public void unlight()
	{
		returnDefaultShaders ();
	}

	// Update is called once per frame
	void Update () {
	
	}
}
