using UnityEngine;
using UnityEditor;
using System.Collections;


namespace Fungus
{
[CustomEditor(typeof(BranchCommand))]
public class BranchCommandEditor : CommandEditor {
		protected SerializedProperty leftSequence;
		protected SerializedProperty rightSequence;
		
		protected virtual void OnEnable()
		{
			leftSequence = serializedObject.FindProperty("_leftSequence");
			rightSequence = serializedObject.FindProperty("_rightSequence");
		}
		
		public override void DrawCommandGUI() 
		{
			serializedObject.Update();
			
			BranchCommand t = target as BranchCommand;
			
			//EditorGUILayout.PropertyField(optionTextProp, new GUIContent("Option Text", "Text to display on the option button."));
			
			SequenceEditor.SequenceField(leftSequence,
			                             new GUIContent("Target Sequence", "Left sequence to execute when this option is selected by the player."),
			                             new GUIContent("<Continue>"),
			                             t.GetFungusScript());

			SequenceEditor.SequenceField(rightSequence,
			                             new GUIContent("Target Sequence", "Left sequence to execute when this option is selected by the player."),
			                             new GUIContent("<Continue>"),
			                             t.GetFungusScript());


			//EditorGUILayout.PropertyField(hideOnSelectedProp, new GUIContent("Hide On Selected", "Hide this option forever once the player has selected it."));
			
			serializedObject.ApplyModifiedProperties();
		}
}
}
