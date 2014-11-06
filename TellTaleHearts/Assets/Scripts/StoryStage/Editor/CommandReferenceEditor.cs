using UnityEngine;
using UnityEditor;
using System.Collections;


namespace Fungus
{
	[CustomEditor(typeof(CommandReference))]
	public class CommandReferenceEditor : CommandEditor {
		protected SerializedProperty commandReference;
		
		protected virtual void OnEnable()
		{
			commandReference = serializedObject.FindProperty("_command");
			//rightSequence = serializedObject.FindProperty("_rightSequence");
		}
		
		public override void DrawCommandGUI() 
		{
			serializedObject.Update();
			
			CommandReference t = target as CommandReference;

			Debug.LogWarning ("commandReference: " + commandReference.objectReferenceValue);

			//EditorGUILayout.PropertyField(optionTextProp, new GUIContent("Option Text", "Text to display on the option button."));
			
			SequenceEditor.CommandField(commandReference,
			                             new GUIContent("Target Command", "A command reference"),
			                             new GUIContent("<Continue>"),
			                             t.GetFungusScript());

			/*SequenceEditor.SequenceField(rightSequence,
			                             new GUIContent("Target Sequence", "Left sequence to execute when this option is selected by the player."),
			                             new GUIContent("<Continue>"),
			                             t.GetFungusScript());
*/

			//EditorGUILayout.PropertyField(hideOnSelectedProp, new GUIContent("Hide On Selected", "Hide this option forever once the player has selected it."));
			
			serializedObject.ApplyModifiedProperties();
		}
}
}
