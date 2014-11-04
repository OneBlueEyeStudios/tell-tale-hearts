using UnityEngine;
using UnityEditor;
using System.Collections;
using System.Collections.Generic;

public class TweeDatabaseCreator{

	static string dbPath = "Assets/Twine/TweeDatabase.asset";

	[MenuItem ("TellTale/Create Twee Database")]
	static TweeDatabase createTweeDatabase()
	{
		TweeDatabase database = ScriptableObject.CreateInstance<TweeDatabase> ();

		AssetDatabase.CreateAsset (database, dbPath);
		AssetDatabase.SaveAssets ();

		EditorUtility.FocusProjectWindow ();

		Selection.activeObject = database;

		return database;
	}

	public static TweeDatabase getTweeDatabase()
	{
		TweeDatabase database = null;
		if (databaseExists(out database)) {
			return database;
				} else
			return createTweeDatabase ();
		/*TweeDatabase database = ScriptableObject.CreateInstance<TweeDatabase> ();
		
		AssetDatabase.CreateAsset (database, dbPath);
		AssetDatabase.SaveAssets ();
		
		EditorUtility.FocusProjectWindow ();
		
		Selection.activeObject = database;
		
		return TweeDatabase;*/
	}


	/*
	
	static void createTweeDatabase(List<string> dialogueIds, List<TweeDialogue> dialogues)
	{
		TweeDatabase database = ScriptableObject.CreateInstance<TweeDatabase> ();
		
		AssetDatabase.CreateAsset (database, dbPath);
		AssetDatabase.SaveAssets ();
		
		EditorUtility.FocusProjectWindow ();
		
		Selection.activeObject = database;
	}
	*/
	[MenuItem ("TellTale/DB exists")]
	static bool databaseExists(out TweeDatabase database)
	{
		database = AssetDatabase.LoadAssetAtPath (dbPath, typeof(TweeDatabase)) as TweeDatabase;
		bool exists = database != null;
		//EditorUtility.DisplayDialog ("TweeDatabase Exists?",exists.ToString(),"OK");

		return exists;
	}

	/*
	[MenuItem ("TellTale/DB exists")]
	static bool updateDatabase()
	{
		bool exists = AssetDatabase.LoadAssetAtPath (dbPath, typeof(TweeDatabase)) != null;
		EditorUtility.DisplayDialog ("TweeDatabase Exists?",exists.ToString(),"OK");
		
		return exists;
	}
	*/


	// Use this for initialization
	void Start () 
	{
	
	}
	
	// Update is called once per frame
	void Update () 
	{
	
	}
}
