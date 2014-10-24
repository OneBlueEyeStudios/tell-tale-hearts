using UnityEngine;
using System.Collections;

public class DialogueHandler : MonoBehaviour {

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
	
	
	public GameObject _dialogueBox;

	public CylinderWrap _cylinderWrap;


	
	public void startDialogue (string dialogueID)
	{



		_currentDialogue = _tweeDatabase.getDialogue (dialogueID);


		_cylinderWrap._currentPassage = _currentDialogue.getPassage ("Start");
		StartCoroutine(printPassage ("Start",0));

		NGUITools.SetActive (_dialogueBox, true);
	}

	public void stopDialogue ()
	{
		NGUITools.SetActive (_dialogueBox, false);
		

	}


	 IEnumerator printPassage(string title, float wait)
	{
		_currentPassage = _currentDialogue.getPassage (title);



		yield return new WaitForSeconds (wait);
		

		
		if(_currentPassage == null)
		{
			Debug.LogError("There is no such passage: "+title);
		}
		
		if (!string.IsNullOrEmpty (_currentPassage.dialogue)) {
			SoundManager._instance.playDialogue(_currentPassage.dialogue);
		}
		
		_text.text = _currentPassage.body;

		for (int i =0; i < _choices.Length; i++) 
		{

			_choices[i].text = "";
			NGUITools.SetActive(_choices[i].gameObject,false);
		}


		/*_transition1.text = "";
		_transition2.text = "";
		_transition1.color = Color.black;
		_transition2.color = Color.black;

*/
		if (_currentPassage.transitions == null)
			yield break;
		
		if (_currentPassage.transitions.Count == 0)
			yield break;

		for (int i =0; i < _currentPassage.transitions.Count; i++) 
		{
			NGUITools.SetActive(_choices[i].gameObject,true);
			_choices[i].text = _currentPassage.transitions[i].name;
		}


		_cylinderWrap._currentPassage = _currentPassage;

		
	}
	
	
	// Update is called once per frame
	void Update () {
		if (_currentPassage != null) 
		{

			float scrollWheel = Input.GetAxis ("Mouse ScrollWheel");
			
			Debug.LogWarning ("scrollwheel: " + scrollWheel);
			
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

				float length = SoundManager._instance.playDialogue(_currentPassage.transitions[index].dialogue);
				StartCoroutine(printPassage(_currentPassage.transitions[index].passageTag, length));

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
