using UnityEngine;
using UnityEditor;
using System.Collections;
using System.Collections.Generic;
using System.Text;

public class TweeProcessor : AssetPostprocessor
{

		static void OnPostprocessAllAssets (string[] importedAssets,
	                            string[] deletedAssets,
	                            string[] movedAssets,
	                            string[] movedFromAssetsPath)
		{

				bool hasTwee = false;

				foreach (string path in importedAssets) {

						if (path.Substring (path.LastIndexOf ('.') + 1).Equals ("txt")) {
								hasTwee = true;

						}
				}



				if (hasTwee) {
						TweeDatabase database = TweeDatabaseCreator.getTweeDatabase ();



						foreach (string path in importedAssets) {
						
								if (path.Substring (path.LastIndexOf ('.') + 1).Equals ("txt")) {

										string filename = getFileNameFromPath (path);

										database.removeIfContainsDialogue (filename);

										TweeDialogue dialogue = parseTweeFile (path, database);

										database.addNewDialogue (dialogue._id, dialogue);
								}
						}
						EditorUtility.SetDirty(database);
						AssetDatabase.SaveAssets();
				}


		}

		static string getFileNameFromPath (string path, bool includeExtension = false)
		{
				int indexOfSlash = path.LastIndexOf ("/") + 1;
				string filename = "";
				if (includeExtension)
						filename = path.Substring (indexOfSlash);
				else
						filename = path.Substring (indexOfSlash, path.LastIndexOf (".") - indexOfSlash);

				return filename;
		}

		static string getExtensionFromFilename (string filename)
		{
				return filename.Substring (filename.LastIndexOf ('.') + 1);
		
		}

		static TweeDialogue parseTweeFile (string path, TweeDatabase database)
		{
				Debug.LogWarning ("Parse Twee!: " + path);
		
				TextAsset asset = Resources.LoadAssetAtPath (path, typeof(TextAsset)) as TextAsset;

				string tweeSource = asset.text;

				string filename = getFileNameFromPath (path);//path.Substring (path.LastIndexOf ("/") + 1, path.Length-path.LastIndexOf("."));
				//Debug.Log (text);

				List<string> myTitles = new List<string> ();
				List<TweePassage> myPassages = new List<TweePassage> ();

				Dictionary<string, TweePassage> passages = new Dictionary<string, TweePassage> ();
				string[] titles = new string[0];


				// A reference to the passage we're currently building from the source
				TweePassage currentPassage = null;
         
				// Buffer to hold the content of the current passage while we build it
				StringBuilder buffer = new StringBuilder ();
         
				// Array that will hold all of the individual lines in the twee source
				string[] lines; 
         
				// Utility array used in various instances where a string needs to be split up
				string[] chunks;
         
				// Split the twee source into lines so we can make sense of it while parsing
				lines = tweeSource.Split (new string[] {"\n"}, System.StringSplitOptions.None);
         
				// Just iterating through the whole file here
				for (long i = 0; i < lines.LongLength; i++) {
             
						// If a line begins with "::" that means a new passage has started
						if (lines [i].StartsWith ("::")) {
                 
								// If we were already building a passage, that one is done.
								// Wrap it up and add it to the dictionary of passages. 
								if (currentPassage != null) {
										currentPassage.body = buffer.ToString ();
										passages.Add (currentPassage.title, currentPassage);                 

										myPassages.Add (currentPassage);
										myTitles.Add (currentPassage.title);
										buffer = new StringBuilder ();
								}
                 
								/* I know, I know, a magic number and chained function calls and it's
			* ugly, but it's not that complicated. A new passage in a twee file
                 * starts with a line like this:
                 *
                 * :: The Passage Begins Here [someTag anotherTag heyThere]
                 *               
                 * What's happening here is when a new passage starts, we ignore the
				* :: prefix, strip off the ] at the end of the tags, and split the
				* line on [ into two strings, one of which will be the passage title
				           * while the other has all of the passage's tags, if any are found.
                 */
								chunks = lines [i].Substring (2).Replace ("]", "").Split ('[');
                 
								// We should always have at least a passage title, so we can
								// start a new passage here with that title.
								currentPassage = new TweePassage ();
								currentPassage.title = chunks [0].Trim ();
                 
								// If there was anything after the [, the passage has tags, so just
								// split them up and attach them to the passage.
								if (chunks.Length > 1) {
										currentPassage.tags = chunks [1].Trim ().Split (' ');  
								}
                 
						} else if (currentPassage != null) {
             


								if (lines [i].StartsWith ("[[")) {
										int indexFirst = lines [i].IndexOf ("[[");
										int indexLast = lines [i].LastIndexOf ("]]") - 2;
										int length = lines [i].Length - (lines [i].Length - indexLast) - indexFirst;

										string[] split = lines [i].Substring (indexFirst + 2, length).Split ('|');
										string dialogue = lines [i].Substring (lines [i].IndexOf ('$') + 1);

										Debug.LogWarning ("Transition title:" + split [0] + " _ transition tag:" + split [1] + " _ dialogue:" + dialogue);
										currentPassage.addNewTransition (split [0], split [1], dialogue);
								} else {
										if (lines [i].Contains ("$")) {

												currentPassage.dialogue = lines [i].Substring (lines [i].IndexOf ('$') + 1);
						
												Debug.LogWarning ("body dialogue: " + currentPassage.dialogue);

												buffer.AppendLine (lines [i].Substring (0, lines [i].Length - (lines [i].Length - lines [i].IndexOf ('$')))); 

												Debug.LogWarning ("body : " + buffer.ToString ());
										} else {
												// If we didn't start a new passage, we're still in the previous one,
												// so just append this line to the current passage's buffer.
												buffer.AppendLine (lines [i]); 
										}
								}
						}
				}
				  
				// When we hit the end of the file, we should still have the last passage in
				// the file in the buffer. Wrap it up and end it as well.
				if (currentPassage != null) {           
						currentPassage.body = buffer.ToString ();
						passages.Add (currentPassage.title, currentPassage);
				}

				TweeDialogue tweeDialogue = new TweeDialogue (filename, myTitles, myPassages);

				return tweeDialogue;

		}

		// Use this for initialization
		void Start ()
		{
	
		}
	
		// Update is called once per frame
		void Update ()
		{
	
		}
}
