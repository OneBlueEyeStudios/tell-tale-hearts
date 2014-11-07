using UnityEngine;
using UnityEditor;
using System.Collections;
using Fungus;

[CustomEditor (typeof(TriggerDialogCommand))]
public class TriggerDialogEditor : CommandEditor {
	protected SerializedProperty variable;
	
	protected virtual void OnEnable()
	{
		variable = serializedObject.FindProperty("_variable");
	}
	
	public override void DrawCommandGUI() 
	{
		serializedObject.Update();
	
		DrawDefaultInspector ();

		TriggerDialogCommand t = target as TriggerDialogCommand;


		VariableEditor.VariableField(variable,
		                             new GUIContent("Variable", "Dialogue Name"),
		                             t.GetFungusScript());
		

		serializedObject.ApplyModifiedProperties();
	}
}
