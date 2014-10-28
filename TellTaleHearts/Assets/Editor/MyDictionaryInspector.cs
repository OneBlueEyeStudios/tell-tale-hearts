using UnityEngine;
using UnityEditor;
using System.Collections;
using System.Collections.Generic;
using System;

[CustomEditor(typeof(MyDictionary))]
public class MyDictionaryInspector : Editor
{
	// Get the type of a specified class.
	//string[] _fulltypeOptions;// = {"UnityEngine.GameObject, UnityEngine","UnityEngine.Transform, UnityEngine","UnityEngine.Collider, UnityEngine"};
	//string[] _typeOptions;// = {"GameObject asdasd","Transform","Collider"};


	public Type _keyType, _valueType;

	[SerializeField]
	public int _keyTypeSelected;
	[SerializeField]
	public int _valueTypeSelected;

	[SerializeField]
	public int _typeSelected;

	MyDictionary myTarget;

    //int _nFields;

    //string [] _keys;
    //GameObject[] _values;
	[SerializeField]
	UnityEngine.Object _newKey;
    //UnityEngine.Component _newValue;
	[SerializeField]
	UnityEngine.Object _newValue;


	string _newKeyString, _newValueString;
	//dynamic _keyTest, _valueTest;


	[SerializeField]
    List<bool> _foldout;

	[SerializeField]
    bool _showDictionary;
	[SerializeField]
    bool _showNewEntry;
	[SerializeField]
    bool _locked;

	[SerializeField]
	bool _useGameObjectNameAsKey;


    //Texture2D _lockTex;


	// Use this for initialization
	void Start () {

		//_fulltypeOptions = new string[]{"UnityEngine.GameObject, UnityEngine","UnityEngine.Transform, UnityEngine","UnityEngine.Collider, UnityEngine"};
		//_typeOptions = new string[]{"GameObject","Transform","Collider"};

        //_foldout = new List<bool>();
        //_lockTex = (Texture2D)Resources.LoadAssetAtPath("Assets/Textures/Editor/lock.png", typeof(Texture2D));
        //Debug.LogWarning("_lockTex: " + _lockTex);
	}

    void OnEnable()
    {
        //_lockTex = (Texture2D)Resources.LoadAssetAtPath("Assets/Textures/Editor/lock.png", typeof(Texture2D));
        //Debug.LogWarning("_lockTex: " + _lockTex);


    }

	/*
	int indexOfType()
	{
		for (int i = 0; i < TestTypes._fulltypeOptions.Length; i++) {
			Debug.LogWarning(myTarget._elementType);
						if (myTarget._elementType == TestTypes._fulltypeOptions [i])
								return i;
				}
		return 0;
	}
	*/

	// Update is called once per frame
	void Update () {
	
	}

    public override void OnInspectorGUI()
    {
//		string a = "asdasd";
//		Debug.LogWarning (a.GetType ());


        if (_foldout == null)
            _foldout = new List<bool>();

        GUI.changed = false;

        base.OnInspectorGUI();

        myTarget = (MyDictionary)target;

//		if (myTarget.keys == null || myTarget.values == null)
//			myTarget.initDic ();

//		_typeSelected = indexOfType ();

        //if (myTarget._dic == null)
        //    myTarget._dic = new Dictionary<string, GameObject>();

        //insertToDic(myTarget._dic);
        //myTarget.Dic = drawDictionary(myTarget.Dic);

        
		if(!myTarget._created)
			drawTypePopup ();
		else
		{
			drawTypes ();

//		Type asd = myTarget._keyType;


		//	List<string> l = new List<string>();

		//	l.Add("asdjkakdsj");

			//foo (l);

			drawAsDictionary(myTarget.keys, myTarget.values,myTarget._keyType, myTarget._valueType);
			//foo<string.>(l);
		
			drawEmptyField(myTarget.keys, myTarget.values);


        //drawAsDictionary(myTarget.keys, myTarget.values);

		}
        if (GUI.changed)
            EditorUtility.SetDirty(myTarget);

    }


	void foo(IList ilist)
	{
		Type type = ilist.GetType ().GetGenericArguments () [0];

		Debug.LogWarning("Type: "+type);

		var a = Convert.ChangeType(ilist [0],type);

		//string a = ilist [0];

		Debug.LogWarning ("a->"+a);
	}


	void drawTypePopup ()
	{
	
		GUILayout.Label ("Key Type: " + typeof(string));
	//	_keyTypeSelected = EditorGUILayout.Popup ("Key Type:",_keyTypeSelected, TestTypes._typeOptions);
		_valueTypeSelected = EditorGUILayout.Popup ("Value Type: ",_valueTypeSelected, TestTypes._typeOptions);

	//	myTarget._keyType = TestTypes._types [_keyTypeSelected];
		myTarget._keyType = typeof(string);
		myTarget._valueType = TestTypes._types [_valueTypeSelected];



		bool create = GUILayout.Button ("Create dictionary");

		if (create) 
		{
			myTarget._created = true;
			myTarget.initDic();

			//myTarget._keyTypeString = TestTypes._types [_keyTypeSelected].Name;
			myTarget._keyTypeString = typeof(string).AssemblyQualifiedName;
			myTarget._valueTypeString = TestTypes._types [_valueTypeSelected].AssemblyQualifiedName;
		}

		EditorUtility.SetDirty (myTarget);

		/*
		_typeSelected = EditorGUILayout.Popup (_typeSelected, TestTypes._typeOptions);

		Debug.LogWarning ("Set dirty: " + TestTypes._fulltypeOptions [_typeSelected]);
		myTarget._elementType = TestTypes._fulltypeOptions [_typeSelected];
		EditorUtility.SetDirty (myTarget);
		*/
	}

	void drawTypes ()
	{
	GUILayout.Label ("Key Type: " + myTarget._keyTypeString);
	GUILayout.Label ("Value Type: " + myTarget._valueTypeString);

	//myTarget._keyTypeString = TestTypes._types [_keyTypeSelected].Name;
	//myTarget._valueTypeString = TestTypes._types [_valueTypeSelected].Name;
		/*
		_keyTypeSelected = EditorGUILayout.Popup (_keyTypeSelected, TestTypes._typeOptions);
		_valueTypeSelected = EditorGUILayout.Popup (_keyTypeSelected, TestTypes._typeOptions);
		
		myTarget._keyType = TestTypes._types [_typeSelected];
		myTarget._valueType = TestTypes._types [_typeSelected];
		EditorUtility.SetDirty (myTarget);
		
		/*
		_typeSelected = EditorGUILayout.Popup (_typeSelected, TestTypes._typeOptions);

		Debug.LogWarning ("Set dirty: " + TestTypes._fulltypeOptions [_typeSelected]);
		myTarget._elementType = TestTypes._fulltypeOptions [_typeSelected];
		EditorUtility.SetDirty (myTarget);
		*/
	}


    void insertToDic(string key, GameObject value, Dictionary<string, GameObject> dic)
    {
        Debug.LogWarning("add data");

        dic[key] = value;
        //dic["teste"] = new GameObject("bla");

    }


	
	void drawAsDictionary (IList keys, IList values, Type keyType, Type valueType)
	{
		drawAsDictionaryStringObject(keys,values,valueType);
		/*
		if (valueType == typeof(String) && valueType == typeof(String)) 
		{
			drawAsDictionaryStringString(keys,values);
		}
		else if (keyType == typeof(String)) 
		{
			drawAsDictionaryStringObject(keys,values,valueType);
				}
		else if (valueType == typeof(String)) 
		{
			drawAsDictionaryObjectString(keys,values,keyType);
		}
			else
		{
			drawAsDictionaryObjectObject(keys,values,keyType,valueType);
		}*/
	}

	//void drawAsDictionary<T>(List<string> keys, List<T> values)  where T : UnityEngine.Object//UnityEngine.Component
	//void drawAsDictionary(IList keys, IList values)//  where T : UnityEngine.Object//UnityEngine.Component

	/*
	void drawAsDictionaryStringString (IList keys, IList values)
	{
		EditorGUI.indentLevel = 0;
		
		
		//EditorGUILayout.BeginHorizontal();
		_showDictionary =  EditorGUILayout.Foldout(_showDictionary,"Dictionary("+keys.Count+" entries)");
		
		//Debug.LogWarning ("keys.:" + keys);
		
		if (_showDictionary)
		{
			//_locked = EditorGUILayout.ToggleLeft(new GUIContent(_lockTex, "Lock"), _locked);
			_locked = EditorGUILayout.ToggleLeft("Lock edit", _locked);
			
			EditorGUI.indentLevel = 1;
			
			
			for (int i = 0; i < keys.Count; i++)
			{
				EditorGUI.indentLevel = 1;
				
				EditorGUILayout.BeginHorizontal();
				
				
				//UnityEngine.Object edittedKey = EditorGUILayout.ObjectField( (UnityEngine.Object)keys[i], keyType,true, GUILayout.Width(200f));//EditorGUILayout.TextField( keys[i], GUILayout.MaxWidth(100f));
				
				string edittedKey = EditorGUILayout.TextField( (string)keys[i], GUILayout.MaxWidth(100f));
				
				int collisionIndex = keys.IndexOf(edittedKey);
				
				if (edittedKey.Equals(keys[i]))
				{
				}
				else
				{
					
					if (!keys.Contains(edittedKey))
						updateKeys(keys,i,edittedKey);
					
					
					else
					{
						Debug.LogWarning("IDJAIJDSA");
						EditorGUILayout.HelpBox("The entry \"" + keys[i] + "\" key cannot be changed to, because such key already exists in the dictionary on entry " + collisionIndex, MessageType.Error);
					}
					
				}
				
				EditorGUI.indentLevel = 2;
				
				//T edditedValue = (T)EditorGUILayout.ObjectField( values[i], typeof(T),true, GUILayout.Width(200f));
				//Type selectedtype = Type.GetType(TestTypes._fulltypeOptions[_typeSelected]);
				
				//T edditedValue = (T)EditorGUILayout.ObjectField( values[i], selectedtype,true, GUILayout.Width(200f));
				//UnityEngine.Object edditedValue = EditorGUILayout.ObjectField( (UnityEngine.Object)values[i], valueType,true, GUILayout.Width(200f));
				
				//T edditedValue = (T)EditorGUILayout.ObjectField( values[i], selectedtype,true, GUILayout.Width(200f));
				string edditedValue = EditorGUILayout.TextField( (string)values[i], GUILayout.MaxWidth(100f));

				updateValues(values,i,edditedValue);
				
				if (GUILayout.Button(new GUIContent("-", "Remove"), EditorStyles.miniButton, GUILayout.Width(20f)))
				{
					keys.Remove(keys[i]);
					values.Remove(values[i]);
				}
				if( i!=0)
					if (GUILayout.Button(new GUIContent("U", "Move entry up"), EditorStyles.miniButton, GUILayout.Width(20f)))
				{
					string keyAux = (string)keys[i];
					string valueAux = (string)values[i];
					
					keys.Remove(keys[i]);
					values.Remove(values[i]);
					
					keys.Insert(i - 1, keyAux);
					values.Insert(i - 1, valueAux);
					
				}
				if(i != keys.Count - 1)
					if (GUILayout.Button(new GUIContent("D", "Move entry down"), EditorStyles.miniButton, GUILayout.Width(20f)) )
				{
					string keyAux = (string)keys[i];
					string valueAux = (string)values[i];
					
					keys.Remove(keys[i]);
					values.Remove(values[i]);
					
					keys.Insert(i + 1, keyAux);
					values.Insert(i + 1, valueAux);
				}
				
				EditorGUILayout.EndHorizontal();
			}
			
			
		}
		
		//EditorGUILayout.EndHorizontal();
		
		EditorGUI.indentLevel = 0;
		
	}
	*/

	void drawAsDictionaryStringObject (IList keys, IList values, Type valueType)
	{
		EditorGUI.indentLevel = 0;
		
		
		//EditorGUILayout.BeginHorizontal();
	_showDictionary =  EditorGUILayout.Foldout(_showDictionary,"Dictionary("+keys.Count+" entries)");
		//Debug.LogWarning ("keys.:" + keys);
		
		if (_showDictionary)
		{			_locked = EditorGUILayout.ToggleLeft("Lock edit", _locked);
			
			EditorGUI.indentLevel = 1;
			
			
			for (int i = 0; i < keys.Count; i++)
			{
				EditorGUI.indentLevel = 1;
				
				EditorGUILayout.BeginHorizontal();
				
				
				//UnityEngine.Object edittedKey = EditorGUILayout.ObjectField( (UnityEngine.Object)keys[i], keyType,true, GUILayout.Width(200f));//EditorGUILayout.TextField( keys[i], GUILayout.MaxWidth(100f));
				
				//edittedKey = EditorGUILayout.TextField( (string)keys[i], GUILayout.MaxWidth(100f));

				
				string edittedKey = EditorGUILayout.TextField( (string)keys[i], GUILayout.MaxWidth(100f));
				

				int collisionIndex = keys.IndexOf(edittedKey);
				
				if (edittedKey.Equals(keys[i]))
				{
				}
				else
				{
					
					if (!keys.Contains(edittedKey))
						updateKeys(keys,i,edittedKey);
					
					
					else
					{
						Debug.LogWarning("IDJAIJDSA");
						EditorGUILayout.HelpBox("The entry \"" + keys[i] + "\" key cannot be changed to, because such key already exists in the dictionary on entry " + collisionIndex, MessageType.Error);
					}
					
				}
				
				EditorGUI.indentLevel = 2;
				
				//T edditedValue = (T)EditorGUILayout.ObjectField( values[i], typeof(T),true, GUILayout.Width(200f));
				//Type selectedtype = Type.GetType(TestTypes._fulltypeOptions[_typeSelected]);
				
				//T edditedValue = (T)EditorGUILayout.ObjectField( values[i], selectedtype,true, GUILayout.Width(200f));
				UnityEngine.Object edditedValue = EditorGUILayout.ObjectField( (UnityEngine.Object)values[i], valueType,true, GUILayout.Width(200f));
				
				//T edditedValue = (T)EditorGUILayout.ObjectField( values[i], selectedtype,true, GUILayout.Width(200f));
				updateValues(values,i,edditedValue);
				
				if (GUILayout.Button(new GUIContent("-", "Remove"), EditorStyles.miniButton, GUILayout.Width(20f)))
				{
					keys.Remove(keys[i]);
					values.Remove(values[i]);
				}
				if( i!=0)
					if (GUILayout.Button(new GUIContent("U", "Move entry up"), EditorStyles.miniButton, GUILayout.Width(20f)))
				{
					string keyAux = (string)keys[i];
					UnityEngine.Object valueAux = (UnityEngine.Object)values[i];
					
					keys.Remove(keys[i]);
					values.Remove(values[i]);
					
					keys.Insert(i - 1, keyAux);
					values.Insert(i - 1, valueAux);
					
				}
				if(i != keys.Count - 1)
					if (GUILayout.Button(new GUIContent("D", "Move entry down"), EditorStyles.miniButton, GUILayout.Width(20f)) )
				{
					string keyAux = (string)keys[i];
					UnityEngine.Object valueAux = (UnityEngine.Object)values[i];
					
					keys.Remove(keys[i]);
					values.Remove(values[i]);
					
					keys.Insert(i + 1, keyAux);
					values.Insert(i + 1, valueAux);
				}
				
				EditorGUILayout.EndHorizontal();
			}
			
			
		}
		
		//EditorGUILayout.EndHorizontal();
		
		EditorGUI.indentLevel = 0;

	}

	/*
	void drawAsDictionaryObjectString (IList keys, IList values, Type keyType)
	{
		EditorGUI.indentLevel = 0;
		
		
		//EditorGUILayout.BeginHorizontal();
		_showDictionary =  EditorGUILayout.Foldout(_showDictionary,"Dictionary("+keys.Count+" entries)");
		
		//Debug.LogWarning ("keys.:" + keys);
		
		if (_showDictionary)
		{			_locked = EditorGUILayout.ToggleLeft("Lock edit", _locked);
			
			EditorGUI.indentLevel = 1;
			
			
			for (int i = 0; i < keys.Count; i++)
			{
				EditorGUI.indentLevel = 1;
				
				EditorGUILayout.BeginHorizontal();
				
				
				UnityEngine.Object edittedKey = EditorGUILayout.ObjectField( (UnityEngine.Object)keys[i], keyType,true, GUILayout.Width(200f));//EditorGUILayout.TextField( keys[i], GUILayout.MaxWidth(100f));
				
				//edittedKey = EditorGUILayout.TextField( (string)keys[i], GUILayout.MaxWidth(100f));
				
				int collisionIndex = keys.IndexOf(edittedKey);
				
				if (edittedKey.Equals(keys[i]))
				{
				}
				else
				{
					
					if (!keys.Contains(edittedKey))
						updateKeys(keys,i,edittedKey);
					
					
					else
					{
						Debug.LogWarning("IDJAIJDSA");
						EditorGUILayout.HelpBox("The entry \"" + keys[i] + "\" key cannot be changed to, because such key already exists in the dictionary on entry " + collisionIndex, MessageType.Error);
					}
					
				}
				
				EditorGUI.indentLevel = 2;
				
				//T edditedValue = (T)EditorGUILayout.ObjectField( values[i], typeof(T),true, GUILayout.Width(200f));
				//Type selectedtype = Type.GetType(TestTypes._fulltypeOptions[_typeSelected]);
				
				string edditedValue = EditorGUILayout.TextField( (string)values[i], GUILayout.MaxWidth(100f));
				
				updateValues(values,i,edditedValue);
				
				if (GUILayout.Button(new GUIContent("-", "Remove"), EditorStyles.miniButton, GUILayout.Width(20f)))
				{
					keys.Remove(keys[i]);
					values.Remove(values[i]);
				}
				if( i!=0)
					if (GUILayout.Button(new GUIContent("U", "Move entry up"), EditorStyles.miniButton, GUILayout.Width(20f)))
				{
					UnityEngine.Object keyAux = (UnityEngine.Object)keys[i];
					string valueAux = (string)values[i];
					
					keys.Remove(keys[i]);
					values.Remove(values[i]);
					
					keys.Insert(i - 1, keyAux);
					values.Insert(i - 1, valueAux);
					
				}
				if(i != keys.Count - 1)
					if (GUILayout.Button(new GUIContent("D", "Move entry down"), EditorStyles.miniButton, GUILayout.Width(20f)) )
				{
					UnityEngine.Object keyAux = (UnityEngine.Object)keys[i];
					string valueAux = (string)values[i];
					
					keys.Remove(keys[i]);
					values.Remove(values[i]);
					
					keys.Insert(i + 1, keyAux);
					values.Insert(i + 1, valueAux);
				}
				
				EditorGUILayout.EndHorizontal();
			}
			
			
		}
		
		//EditorGUILayout.EndHorizontal();
		
		EditorGUI.indentLevel = 0;

	}

	void drawAsDictionaryObjectObject (IList keys, IList values, Type keyType, Type valueType)
    {

        EditorGUI.indentLevel = 0;


        //EditorGUILayout.BeginHorizontal();
		_showDictionary =  EditorGUILayout.Foldout(_showDictionary,"Dictionary("+keys.Count+" entries)");

		//Debug.LogWarning ("keys.:" + keys);

        if (_showDictionary)
		{			_locked = EditorGUILayout.ToggleLeft("Lock edit", _locked);

            EditorGUI.indentLevel = 1;

       
            for (int i = 0; i < keys.Count; i++)
            {
                EditorGUI.indentLevel = 1;

                EditorGUILayout.BeginHorizontal();


				UnityEngine.Object edittedKey = EditorGUILayout.ObjectField( (UnityEngine.Object)keys[i], keyType,true, GUILayout.Width(200f));//EditorGUILayout.TextField( keys[i], GUILayout.MaxWidth(100f));

				//edittedKey = EditorGUILayout.TextField( (string)keys[i], GUILayout.MaxWidth(100f));

                int collisionIndex = keys.IndexOf(edittedKey);

                if (edittedKey.Equals(keys[i]))
                {
                }
                else
                {

                    if (!keys.Contains(edittedKey))
                        updateKeys(keys,i,edittedKey);


                    else
                    {
                        Debug.LogWarning("IDJAIJDSA");
                        EditorGUILayout.HelpBox("The entry \"" + keys[i] + "\" key cannot be changed to, because such key already exists in the dictionary on entry " + collisionIndex, MessageType.Error);
                    }

                }
                
                EditorGUI.indentLevel = 2;

                //T edditedValue = (T)EditorGUILayout.ObjectField( values[i], typeof(T),true, GUILayout.Width(200f));
				//Type selectedtype = Type.GetType(TestTypes._fulltypeOptions[_typeSelected]);

				//T edditedValue = (T)EditorGUILayout.ObjectField( values[i], selectedtype,true, GUILayout.Width(200f));
				UnityEngine.Object edditedValue = EditorGUILayout.ObjectField( (UnityEngine.Object)values[i], valueType,true, GUILayout.Width(200f));

				//T edditedValue = (T)EditorGUILayout.ObjectField( values[i], selectedtype,true, GUILayout.Width(200f));
                updateValues(values,i,edditedValue);
                
                if (GUILayout.Button(new GUIContent("-", "Remove"), EditorStyles.miniButton, GUILayout.Width(20f)))
                {
                    keys.Remove(keys[i]);
                    values.Remove(values[i]);
                }
                if( i!=0)
                if (GUILayout.Button(new GUIContent("U", "Move entry up"), EditorStyles.miniButton, GUILayout.Width(20f)))
                {
					UnityEngine.Object keyAux = (UnityEngine.Object)keys[i];
					UnityEngine.Object valueAux = (UnityEngine.Object)values[i];
                    
                    keys.Remove(keys[i]);
                    values.Remove(values[i]);

                    keys.Insert(i - 1, keyAux);
                    values.Insert(i - 1, valueAux);

                }
                if(i != keys.Count - 1)
                if (GUILayout.Button(new GUIContent("D", "Move entry down"), EditorStyles.miniButton, GUILayout.Width(20f)) )
                {
					UnityEngine.Object keyAux = (UnityEngine.Object)keys[i];
					UnityEngine.Object valueAux = (UnityEngine.Object)values[i];

                    keys.Remove(keys[i]);
                    values.Remove(values[i]);

                    keys.Insert(i + 1, keyAux);
                    values.Insert(i + 1, valueAux);
                }

                EditorGUILayout.EndHorizontal();
            }

            
        }

        //EditorGUILayout.EndHorizontal();

        EditorGUI.indentLevel = 0;

    
    }
    */

	private void updateKeys(IList keys, int i, UnityEngine.Object edittedKey)
	{
		if(!_locked)
			keys[i] = edittedKey;
	}
	private void updateValues(IList values, int i, UnityEngine.Object edittedValue)
	{
		if (!_locked)
			values[i] = edittedValue;
	}

	private void updateKeys(IList keys, int i, string edittedKey)
	{
		if(!_locked)
			keys[i] = edittedKey;
	}
	private void updateValues(IList values, int i, string edittedValue)
	{
		if (!_locked)
			values[i] = edittedValue;
	}



	/*
    private void updateKeys(List<string> keys, int i, string edittedKey)
    {
        if(!_locked)
        keys[i] = edittedKey;
    }

    private void updateValues<T>(List<T> values, int i, T edittedValue)
    {
        if (!_locked)
        values[i] = edittedValue;
    }
*/

	//private void drawEmptyField<T>(List<string> keys, List<T> values)where T : UnityEngine.Object// where T : UnityEngine.Component
	private void drawEmptyField(IList keys, IList values)//, Type keyType, Type valueType)//where T : UnityEngine.Object// where T : UnityEngine.Component
    {
        EditorGUI.indentLevel = 0;

        _showNewEntry = EditorGUILayout.Foldout(_showNewEntry,"New entry");

		Type keyType, valueType;

		keyType = Type.GetType (myTarget._keyTypeString);
		valueType = Type.GetType (myTarget._valueTypeString);

        if (!_showNewEntry)
            return;

//		Debug.LogWarning ("KyeType: " + keyType);
//		Debug.LogWarning ("valueType: " + valueType);


	    EditorGUI.indentLevel = 1;
        
		_useGameObjectNameAsKey = EditorGUILayout.Toggle ("Use GameObject name as key",_useGameObjectNameAsKey);//(new GUIContent(_lockTex, "Lock"), _locked);

		//_newKey = EditorGUILayout.TextField("New Key",_newKey);


		//_newKey = _keyTest;

		//if (key != null) {
		//				var newKey2 = Convert.ChangeType (key, keyType);
		//		}
		//Type selectedtype = Type.GetType (TestTypes._fulltypeOptions[_typeSelected]);//"UnityEngine.Collider, UnityEngine");

		//UnityEngine.Object ob = EditorGUILayout.ObjectField("New Value", _newValue,valueType, true);

		if(keyType == typeof(string))
			_newKeyString = EditorGUILayout.TextField("New Key", _newKeyString);
		else
			_newKey = EditorGUILayout.ObjectField("New Key", _newKey,keyType, true);



		if(valueType == typeof(string))
			_newValueString = EditorGUILayout.TextField("New Value", _newValueString);
		else
			_newValue = EditorGUILayout.ObjectField("New Value", _newValue,valueType, true);

		if (keyType == typeof(string) && _newValue != null && _useGameObjectNameAsKey)
						_newKeyString = _newValue.name;
		

		// newValue2;

		//UnityEngine.Object ob = EditorGUILayout.ObjectField("New Value", _newValue,selectedtype, true);
		//dynamic ob = EditorGUILayout.ObjectField("New Value", _newValue,selectedtype, true);
		/*
		if (ob != null) 
		{
			//if(selectedtype == typeof(GameObject))
			 //  _newValue = ob as GameObject;
		    //else
				//_newValue = Convert.ChangeType(ob,valueType);
//			var newValue2 = Convert.ChangeType(ob,valueType);

			//if(_useGameObjectNameAsKey)
			//	_newKey = _newValue.name;
		}
        else
            _newValue = null;
*/

		checkEntryStringObject (keys,values);
		/*
		if (valueType == typeof(String) && valueType == typeof(String)) 
		{
			checkEntryStringString (keys,values);
		}
		else if (keyType == typeof(String)) 
		{
			checkEntryStringObject (keys,values);
		}
		else if (valueType == typeof(String)) 
		{
			checkEntryObjectString (keys,values);
		}
		else 
		{
			checkEntryObjectObject (keys,values);
		}

		/*
        if (_newValue != null)
        {
//            if (string.IsNullOrEmpty(_newKey))
  //              EditorGUILayout.HelpBox("The entry key cannot be null", MessageType.Error);
			if(_newKey == null)
				EditorGUILayout.HelpBox("The entry key cannot be null asdasd", MessageType.Error);
            else
            {
                if (keys.Contains(_newKey))
                {
                    EditorGUILayout.HelpBox("The entry \"" + _newKey + "\" is on the already in the dictionary", MessageType.Error);
                }
                else
                {
                    if (GUILayout.Button("Add Entry"))
                    {
						if(keyType == typeof(string))

                        keys.Add(_newKey);
						else
							keys.Add(_newKeyString);
                        

						if(valueType == typeof(string))
							
							values.Add(_newValue);
						else
							values.Add(_newValueString);
						//values.Add(_newValue);

                        _newKey = null;
                        _newValue = null;
                    }
                }
            }


        }
        else
            if (_newKey!=null)
                EditorGUILayout.HelpBox("The entry value cannot be null", MessageType.Error);
*/
    }

	/*
	void checkEntryStringString (IList keys, IList values)
	{
		
		if (!string.IsNullOrEmpty(_newValueString))
		{
			//            if (string.IsNullOrEmpty(_newKey))
			//              EditorGUILayout.HelpBox("The entry key cannot be null", MessageType.Error);
			if(string.IsNullOrEmpty(_newKeyString))
				EditorGUILayout.HelpBox("The entry key cannot be null asdasd", MessageType.Error);
			else
			{
				if (keys.Contains(_newKeyString))
				{
					EditorGUILayout.HelpBox("The entry \"" + _newKeyString + "\" is on the already in the dictionary", MessageType.Error);
				}
				else
				{
					if (GUILayout.Button("Add Entry"))
					{
						keys.Add(_newKeyString);
						
						values.Add(_newValueString);
						
						_newKeyString = "";
						_newValueString = "";
					}
				}
			}
			
			
		}
		else
			if (!string.IsNullOrEmpty(_newKeyString))
				EditorGUILayout.HelpBox("The entry value cannot be null", MessageType.Error);
	}
	*/
	void checkEntryStringObject (IList keys, IList values)
	{
		
		if (_newValue != null)
		{
			//            if (string.IsNullOrEmpty(_newKey))
			//              EditorGUILayout.HelpBox("The entry key cannot be null", MessageType.Error);
			if(string.IsNullOrEmpty(_newKeyString))
				EditorGUILayout.HelpBox("The entry key cannot be null asdasd", MessageType.Error);
			else
			{
				if (keys.Contains(_newKeyString))
				{
					EditorGUILayout.HelpBox("The entry \"" + _newKeyString + "\" is on the already in the dictionary", MessageType.Error);
				}
				else
				{
					if (GUILayout.Button("Add Entry"))
					{
						keys.Add(_newKeyString);
						
						values.Add(_newValue);
						
						_newKeyString = "";
						_newValue = null;
					}
				}
			}
			
			
		}
		else
			if (!string.IsNullOrEmpty(_newKeyString))
				EditorGUILayout.HelpBox("The entry value cannot be null", MessageType.Error);
	}
	/*
	void checkEntryObjectString (IList keys, IList values)
	{
		if (!string.IsNullOrEmpty(_newValueString))
		{
			//            if (string.IsNullOrEmpty(_newKey))
			//              EditorGUILayout.HelpBox("The entry key cannot be null", MessageType.Error);
			if(_newKey == null)
				EditorGUILayout.HelpBox("The entry key cannot be null asdasd", MessageType.Error);
			else
			{
				if (keys.Contains(_newKey))
				{
					EditorGUILayout.HelpBox("The entry \"" + _newKey + "\" is on the already in the dictionary", MessageType.Error);
				}
				else
				{
					if (GUILayout.Button("Add Entry"))
					{
						keys.Add(_newKey);
						
						values.Add(_newValueString);
						
						_newKey = null;
						_newValueString = "";
					}
				}
			}
			
			
		}
		else
			if (_newKey!=null)
				EditorGUILayout.HelpBox("The entry value cannot be null", MessageType.Error);
	}

	void checkEntryObjectObject (IList keys, IList values)
	{
		
		if (_newValue != null)
		{
			//            if (string.IsNullOrEmpty(_newKey))
			//              EditorGUILayout.HelpBox("The entry key cannot be null", MessageType.Error);
			if(_newKey == null)
				EditorGUILayout.HelpBox("The entry key cannot be null asdasd", MessageType.Error);
			else
			{
				if (keys.Contains(_newKey))
				{
					EditorGUILayout.HelpBox("The entry \"" + _newKey + "\" is on the already in the dictionary", MessageType.Error);
				}
				else
				{
					if (GUILayout.Button("Add Entry"))
					{
							keys.Add(_newKey);
							
							values.Add(_newValue);

						_newKey = null;
						_newValue = null;
					}
				}
			}
			
			
		}
		else
			if (_newKey!=null)
				EditorGUILayout.HelpBox("The entry value cannot be null", MessageType.Error);
	}
*/
    //Dictionary<string, GameObject> drawDictionary(Dictionary<string, GameObject> dic)
    //{
    //    //int lastNFields = _nFields;
    //    //
    //    //_nFields = EditorGUILayout.IntField("Size",_nFields);
    //    //
    //    //if (_nFields != lastNFields)
    //    //{
    //    //    _keys = new string[_nFields];
    //    //    _values = new GameObject[_nFields];
    //    //}
    //
    //    if (dic == null)
    //        if (GUILayout.Button("Init"))
    //        {
    //            dic = new Dictionary<string, GameObject>(); ;
    //            EditorUtility.SetDirty(myTarget);
    //        }
    //        else
    //            return dic;
    //
    //    //for(int i = 0; int < dic.Count; i++)
    //
    //    int i = 0;
    //    foreach(KeyValuePair<string,GameObject> keyPair in dic)
    //    {
    //        EditorGUI.indentLevel = 0;
    //
    //        //_foldout[i] = EditorGUILayout.Foldout(_foldout[i], keyPair.Key);
    //
    //
    //
    //        //if(_foldout[i])
    //        EditorGUILayout.TextField(keyPair.Key);
    //        EditorGUI.indentLevel = 1;
    //        EditorGUILayout.ObjectField(keyPair.Value,typeof(GameObject));
    //
    //        i++;
    //    }
    //
    //    //for (int i = 0; i < _nFields - dic.Count; i++)
    //    {
    //        //if (i < dic.Count)
    //        //    drawField(dic, i);
    //        //else
    //        EditorGUI.indentLevel = 0;
    //            drawEmptyField(dic);
    //    }
    //
    //
    //
    //    //foreach (KeyValuePair<string, GameObject> keyPair in dic)
    //    //{
    //    //
    //    //    EditorGUILayout.TextField(keyPair.Key);
    //    //    EditorGUILayout.ObjectField(keyPair.Value,typeof(GameObject));
    //    //
    //    //}
    //
    //    return dic;
    //}

    //private void drawEmptyField(Dictionary<string, GameObject> dic)
    //{
    //    EditorGUILayout.LabelField("To be inserted");
    //
    //    _newKey = EditorGUILayout.TextField(_newKey);
    //    _newValue = (GameObject)EditorGUILayout.ObjectField(_newValue, typeof(GameObject));
    //
    //    if (GUILayout.Button("Add data"))
    //    {
    //        insertToDic(_newKey, _newValue, dic);
    //        _foldout.Add(false);
    //
    //        EditorUtility.SetDirty(myTarget);
    //    }
    //}

    
}
