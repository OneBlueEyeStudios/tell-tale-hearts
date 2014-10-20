using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Reflection;
using System;
using UnityEditor;
using UnityEngine.UI;

public class TweeManager : MonoBehaviour {

	public TweeDatabase _tweeDatabase;

	public TweePassage _currentPassage;

	public TweeDialogue _currentDialogue;


	public Text _body, _transition1, _transition2;

	public string teste;
	// Use this for initialization
	void Start () {
	
	}

	void startDialogue (string dialogueID)
	{
		_currentDialogue = _tweeDatabase.getDialogue (dialogueID);

		StartCoroutine(printPassage ("Start",0));
	}

	IEnumerator printPassage(string title, float wait)
	{

		yield return new WaitForSeconds (wait);
	
		_currentPassage = _currentDialogue.getPassage (title);

		if(_currentPassage == null)
		{
			Debug.LogError("There is no such passage: "+title);
		}

		if (!string.IsNullOrEmpty (_currentPassage.dialogue)) {
			SoundManager._instance.playDialogue(_currentPassage.dialogue);
		}

		_body.text = _currentPassage.body;

		_transition1.text = "";
		_transition2.text = "";
		_transition1.color = Color.black;
		_transition2.color = Color.black;

		if (_currentPassage.transitions == null)
						yield break;

		if (_currentPassage.transitions.Count == 0)
			yield break;

		if (_currentPassage.transitions [0] == null)
			yield break;
		
		_transition1.text = "1."+_currentPassage.transitions [0] .name;

		if (_currentPassage.transitions [1] == null)
			yield break;
		
		_transition2.text = "2."+_currentPassage.transitions [1] .name;

	}

	
	// Update is called once per frame
	void Update () {
		if (_currentPassage != null) 
		{
		if(Input.GetKeyDown(KeyCode.Alpha1))
		{
				_transition1.color = Color.yellow;
				float length = SoundManager._instance.playDialogue(_currentPassage.transitions[0].dialogue);
				StartCoroutine(printPassage(_currentPassage.transitions[0].passageTag, length));
		}
				             if(Input.GetKeyDown(KeyCode.Alpha2))
				             {
				_transition2.color = Color.yellow;
				float length = SoundManager._instance.playDialogue(_currentPassage.transitions[1].dialogue);
				StartCoroutine(printPassage(_currentPassage.transitions[1].passageTag, length));
					             }
		}
	}

	public static void ClearLog()
	{
		Assembly assembly = Assembly.GetAssembly(typeof(SceneView));
		
		Type type = assembly.GetType("UnityEditorInternal.LogEntries");
		MethodInfo method = type.GetMethod("Clear");
		method.Invoke(new object(), null);
	}

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

	void setEnabledText(bool enabled)
	{
		_body.gameObject.SetActive (enabled);
		_transition1.gameObject.SetActive (enabled);
		_transition2.gameObject.SetActive (enabled);
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
