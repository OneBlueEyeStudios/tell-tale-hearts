using UnityEngine;
using UnityEditor;
using System.Collections;
using Rotorz.ReorderableList;

[CustomEditor(typeof(Stage))]
public class StageCustomEditor : Editor {

	SerializedProperty _list;

	void OnEnable()
	{
		_list = serializedObject.FindProperty ("_steps");
	}

	public override void OnInspectorGUI()
	{
		ReorderableListGUI.Title("Steps");
		ReorderableListGUI.ListField(_list);
		//ReorderableListGUI ();

		serializedObject.ApplyModifiedProperties ();
		//;
	}

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
