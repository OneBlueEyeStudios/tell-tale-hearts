using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;

public class Constants
{

	public static string CURRENT_STAGE = "CurrentStage"; 
	public static string DOUBT = "doubt";
	public static string SUSPICION = "Suspicion";
	public static string SPEAKING_COP = "SpeakingCop";
	public static string DECISION_NODE = "Decision";
	public static string GOOD_COP_APPROACH = "GoodCopApproach";
	public static string BAD_COP_APPROACH = "BadCopApproach";
	public static string GOOD_COP = "good";
	public static string BAD_COP = "bad";

	public static string CUE_TAG = "cue";
	public static string COP_TAG = "cop";
	public static string VAR_TAG = "var";
	public static string PLUS_EQUAL = "+=";
	public static string MINUS_EQUAL = "-=";


	public static string STAGE_FINISH_TRIGGER =  "StageFinished";
	public static string GAME_START_TRIGGER =  "GameStart";
	public static string DOOR_OPEN_TRIGGER = "DoorOpen";

}

public class DialogueHandler : MonoBehaviour {

	public event EventHandler dialogueEnded;

	public void OnDialogueEnded()
	{
		//Debug.Log ("Dialogue ended!");

		CharView._instance.setMouseLookEnabled (true);
		CharView._instance.setCharacterMotorEnabled (true);

		evaluateDialogue ();

		if (dialogueEnded!=null)
				dialogueEnded (this,EventArgs.Empty);
	}

	public static DialogueHandler _instance;

	void Awake()
	{
		_instance = this;
	}

	public UILabel _text;
	public UILabel[] _choices;


	public TweeDatabase _tweeDatabase;

	public TweePassage _currentPassage;
	
	public TweeDialogue _currentDialogue;
	
	public UILabel _simpleLine;

	public GameObject _dialogueBox;
	public GameObject _optionsBox;

	public CylinderWrap _cylinderWrap;

	bool _showingDialogue;

	public Dictionary<string,int> _currentDialogueVars;

	public AudioSource _currentLine;
	
	public void startDialogue (string dialogueID, string startPassage = "Start")
	{
		CharView._instance.setMouseLookEnabled (false);
		CharView._instance.setCharacterMotorEnabled (false);

		_currentDialogueVars = new Dictionary<string, int> ();

//		Debug.LogWarning ("startDialogue: " + startPassage);

		_currentDialogue = _tweeDatabase.getDialogue (dialogueID);


		_cylinderWrap._currentPassage = _currentDialogue.getPassage (startPassage);
		StopAllCoroutines ();
		StartCoroutine (printPassage (startPassage));//,0));

		//NGUITools.SetActive (_dialogueBox, true);
		showDialogueBox ();
	}

	public void stopDialogue ()
	{
		NGUITools.SetActive (_dialogueBox, false);
		

	}

	void evaluateDialogue ()
	{
		if (_currentDialogueVars.ContainsKey(Constants.DOUBT) && _currentDialogueVars [Constants.DOUBT] > 0) 
		{

			if(StageManager._instance.copKnowsStageClue())
			{
				//Debug.LogWarning("Cop knows about clue");
				Debug.LogWarning("Increment suspicion by 1");
				StageManager._instance.incrementGlobalVar(Constants.SUSPICION,1);
			}
			else
				Debug.LogWarning("Cop does not knows about clue");

		}
	}

	public void showSimpleDialog(string text)
	{
		NGUITools.SetActive (_simpleLine.gameObject, true);
		_simpleLine.text = text;
		Invoke ("disableSimpleLine", 2);
		}

	void disableSimpleLine()
	{
		
		NGUITools.SetActive (_simpleLine.gameObject, false);
	}

	public void showDialogueBox ()
	{
		NGUITools.SetActive (_dialogueBox, true);

		if (_currentPassage.transitions != null && _currentPassage.transitions.Count > 0)
						Invoke ("showOptions", 2f);
				else
						hideOptions ();
	}
	public void hideDialogueBox ()
	{
		NGUITools.SetActive (_dialogueBox, false);
		
		
	}

	void hideOptions ()
	{
		NGUITools.SetActive (_optionsBox, false);

		
		_showingDialogue = false;

		Invoke ("hideDialogueBox", 3);
	}
	void showOptions ()
	{
		NGUITools.SetActive (_optionsBox, true);

		_showingDialogue = true;
	}

	 IEnumerator printPassage(string title)//, float wait)
	{
		_currentPassage = _currentDialogue.getPassage (title);

		float length = 0;

		//if (!string.IsNullOrEmpty (_currentPassage.dialogue)) {
			
		//	UnityEngine.Debug.LogWarning ("_currentPassage.dialogue: " + _currentPassage.dialogue);
			
			//SoundManager._instance.playDialogue(_currentPassage.dialogue);
			//_currentLine = SoundManager._instance.playDialogue(_currentPassage.dialogue, length, StageManager._instance.getSpeakingCopPos());
			
			playDialogueLine(_currentPassage,out length);
		//}


		

		
		if(_currentPassage == null)
		{
			Debug.LogError("There is no such passage: "+title);
			//stopDialogue();
			//hideDialogueBox();
			//OnDialogueEnded();
		}

		
		_text.text = _currentPassage.body;

		int i;
		for (i =0; i < _choices.Length; i++) 
		{

			_choices[i].text = "";
			NGUITools.SetActive(_choices[i].gameObject,false);
		}


		for (i =0; i < _currentPassage.transitions.Count; i++) 
		{
			NGUITools.SetActive(_choices[i].gameObject,true);
			_choices[i].text = _currentPassage.transitions[i].name;
		}

		NGUITools.SetActive(_choices[i].gameObject,true);
		_choices[i].text = "CONFESS";
		
		
		_cylinderWrap._currentPassage = _currentPassage;
		_cylinderWrap.spin ();


		if (_currentPassage.transitions == null || _currentPassage.transitions.Count == 0) 
		{
			Debug.LogError("Here");

			OnDialogueEnded();
			hideOptions();
			//stopDialogue();
			//			yield break;
			
		}

		yield return new WaitForSeconds(length);

		//yield return new WaitForSeconds (length);

	}

	string getTransitionCue(TweeTransition tweeTransition)
	{
		if (tweeTransition.tags == null)
						return "";

		foreach(TweeTag tags in tweeTransition.tags)
		{
			if(tags.key.Equals(Constants.CUE_TAG))
			{
				return tags.value;
			}
		}

		return "";
	}

	void checkVariable (string s)
	{
		int value = 0;
		bool exists = _currentDialogueVars.TryGetValue (s, out value);

		if (!exists) 
		{
				
			_currentDialogueVars.Add (s, 0);
			Debug.LogWarning("Created var: "+s);
		}

	}

	void evaluateVar (string s)
	{
		int plusEqual, minusEqual;
		plusEqual = s.IndexOf (Constants.PLUS_EQUAL);
		minusEqual = s.IndexOf (Constants.MINUS_EQUAL);

		bool isPlusEqual = plusEqual > 0;

		string varName;
		if (isPlusEqual)
			varName = s.cutFromTo(0,plusEqual);
		else
			varName = s.cutFromTo(0,minusEqual);


		checkVariable (varName);

		int value = int.Parse(s.Substring(varName.Length+2));

		if (isPlusEqual)
			_currentDialogueVars [varName] += value;
		else
			_currentDialogueVars [varName] -= value;

		//Debug.LogWarning ("varName: " + varName + " => value " + value);

		Debug.LogWarning (varName+"="+_currentDialogueVars [varName]);

	}

	void evaluateVars (TweeTransition tweeTransition)
	{
		if (tweeTransition.tags == null) 
		{
			Debug.LogWarning("tweeTransition.tags == null");

						return;
		
		}

		foreach(TweeTag tag in tweeTransition.tags)
		{
			if(tag.key.Equals(Constants.VAR_TAG))
			{
				evaluateVar(tag.value);
			}
		}
	}

	void evaluateTransition (TweeTransition tweeTransition)
	{
		//float length = SoundManager._instance.playDialogue(_currentPassage.transitions[index].dialogue);
		/*string cue = getTransitionCue (tweeTransition);
		float length = 0;
		if (!string.IsNullOrEmpty (cue)) 
		{ 
			length = SoundManager._instance.playDialogue(cue);
		
		}
		*/

		evaluateVars (tweeTransition);

		//float length;
		//playDialogueLine (tweeTransition, out length);



		StopAllCoroutines ();
		StartCoroutine(printPassage(tweeTransition.passageTag));//, length));
	}	

	//void playDialogueLine (TweeTransition tweeTransition, out float length)
	void playDialogueLine (TweePassage tweePassage, out float length)
	{
		//length = 0;

		if (_currentLine != null) 
		{
			_currentLine.Stop();
		}

		/*Transform pos = StageManager._instance.getSpeakingCopPos ();
		if(pos==null)
			pos= StageManager._instance.getDoorPos ();
*/


		string cue = tweePassage.getDialogue ();
		string cop = tweePassage.getCop ();

		if (string.IsNullOrEmpty (cue) || string.IsNullOrEmpty (cue)) {
			Debug.LogError("Cue or cop was empty for passage: "+tweePassage.body);
						length = 0;
						return;
				}
//		Debug.LogError ("play cue: " + cue);

		Transform source = cop.Equals (Constants.BAD_COP) ? StageManager._instance._badCop.transform : StageManager._instance._goodCop.transform;

		Debug.LogError ("look at!");

		source.LookAt (CharView._instance.transform);

		//_currentLine = SoundManager._instance.playDialogue(tweePassage.dialogue, out length, StageManager._instance._goodCop.transform);
		_currentLine = SoundManager._instance.playDialogue(cue, out length, source);
	}
	
	// Update is called once per frame
	void Update () {
		if (_currentPassage != null && _showingDialogue) 
		{

			float scrollWheel = Input.GetAxis ("Mouse ScrollWheel");
			
//			Debug.LogWarning ("scrollwheel: " + scrollWheel);
			
			if (scrollWheel > 0f) 
			{
				//centerOnIndex(_currentCenteredIndex+1);
				_cylinderWrap.centerOnNext();
			}
			
			else if (scrollWheel < 0f) 
			{
				//centerOnIndex(_currentCenteredIndex-1);
				_cylinderWrap.centerOnPrevious();
			}

			if(Input.GetButtonDown("Fire1"))
			{
				int index = _cylinderWrap._currentCenteredIndex;

				if(index == _currentPassage.transitions.Count)
					Debug.LogWarning("CONFESS");
				else
					evaluateTransition(_currentPassage.transitions[index]);

				//float length = SoundManager._instance.playDialogue(_currentPassage.transitions[index].dialogue);


			}
			/*
			if(Input.GetKeyDown(KeyCode.Alpha1))
			{
				//_transition1.color = Color.yellow;
				float length = SoundManager._instance.playDialogue(_currentPassage.transitions[0].dialogue);
				StartCoroutine(printPassage(_currentPassage.transitions[0].passageTag, length));
			}
			if(Input.GetKeyDown(KeyCode.Alpha2))
			{
				//_transition2.color = Color.yellow;
				float length = SoundManager._instance.playDialogue(_currentPassage.transitions[1].dialogue);
				StartCoroutine(printPassage(_currentPassage.transitions[1].passageTag, length));
			}
			*/
		}
	}
	void OnGUI()
	{
		if (_currentDialogueVars!=null && _currentDialogueVars.ContainsKey (Constants.DOUBT))
			GUI.Label (new Rect(0,0,100,100),"doubt: " + _currentDialogueVars [Constants.DOUBT]);
	}

	/*
	public void OnTriggerEnter(Collider other)
	{
		if (other.CompareTag ("Player")) {
			setEnabledText(true);
			startDialogue("tweeTest");
		}
		
	}
	
	public void OnTriggerExit(Collider other)
	{
		if (other.CompareTag ("Player")) {
			setEnabledText(false);
		}
		
	}
*/
	
	void setEnabledText(bool enabled)
	{
		_dialogueBox.SetActive (enabled);
		/*_body.gameObject.SetActive (enabled);
		_transition1.gameObject.SetActive (enabled);
		_transition2.gameObject.SetActive (enabled);*/
	}
	
	IEnumerator ClearConsole()
	{
		// wait until console visible
		while(!Debug.developerConsoleVisible)
		{
			yield return null;
		}
		yield return null; // this is required to wait for an additional frame, without this clearing doesn't work (at least for me)
		Debug.ClearDeveloperConsole();
	}


}
