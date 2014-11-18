using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using Fungus;


[CommandInfo("Scripting", 
             "Fade Renderer", 
             "Fade Renderer")]
public class FadeRenderer : Command {
	
	public List<GameObject> _gameObjects;
	public float _duration;
	
	public override void OnEnter()
	{
		if (_gameObjects != null) 
		{
			foreach(GameObject go in _gameObjects)
			{
				iTween.FadeTo(go,0,_duration);
			}
		}
		
		Continue ();
	}
	
}
