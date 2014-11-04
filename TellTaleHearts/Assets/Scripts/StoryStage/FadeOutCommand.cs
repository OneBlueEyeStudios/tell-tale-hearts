using UnityEngine;
using System.Collections;
using Fungus;


[CommandInfo("Scripting", 
             "Fade Out", 
             "Fade Out")]
public class FadeOutCommand : Command {

		
		public Texture2D black; // 
		public float fadeSpeed = 0.3f;
		private float alpha = 0.0f;
		
		//private Camera oldCam;
		//private GameObject oldCamGO;
		
		private Rect blackPos = new Rect();//
		public float scaleBlack = 1; // scale

	bool _entered = false;
	bool _quit = false;

		public override void OnEnter()
		{
			
			blackPos.x = (Screen.width * 0.5f) - (black.width * scaleBlack * 0.5f);
			blackPos.y = (Screen.height * 0.5f) - (black.height * scaleBlack * 0.5f);
			
			blackPos.width = black.width * scaleBlack;
			blackPos.height = black.height * scaleBlack;

		_entered = true;
		}
	
		
		// Update is called once per frame
		void Update () {
			
		if (_entered && !_quit) {
						alpha += fadeSpeed * Time.deltaTime;
			
						if (alpha >= 1)
			{
								Continue ();
				_quit = true;
			}
				}
		}	
		
		void OnGUI() {
			
			GUI.color = new Color(GUI.color.r, GUI.color.g, GUI.color.b, Mathf.Clamp01(alpha));
			GUI.DrawTexture(blackPos, black);//
			
		}

}
