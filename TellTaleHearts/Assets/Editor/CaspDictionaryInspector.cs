using UnityEngine;
using UnityEditor;
using System.Collections;
using System.Collections.Generic;
using System;

[CustomEditor(typeof(CaspDictionary))]
public class CaspDictionaryInspector : Editor
{
	// Get the type of a specified class.
	//string[] _fulltypeOptions;// = {"UnityEngine.GameObject, UnityEngine","UnityEngine.Transform, UnityEngine","UnityEngine.Collider, UnityEngine"};
	//string[] _typeOptions;// = {"GameObject asdasd","Transform","Collider"};
	[SerializeField]
	public int _typeSelected;

    CaspDictionary myTarget;

    //int _nFields;

    //string [] _keys;
    //GameObject[] _values;
	[SerializeField]
    string _newKey;
    //UnityEngine.Component _newValue;
	[SerializeField]
	UnityEngine.Object _newValue;

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


    Texture2D _lockTex;


	// Use this for initialization
	void Start () {

		//_fulltypeOptions = new string[]{"UnityEngine.GameObject, UnityEngine","UnityEngine.Transform, UnityEngine","UnityEngine.Collider, UnityEngine"};
		//_typeOptions = new string[]{"GameObject","Transform","Collider"};

        //_foldout = new List<bool>();
        _lockTex = (Texture2D)Resources.LoadAssetAtPath("Assets/Textures/Editor/lock.png", typeof(Texture2D));
        //Debug.LogWarning("_lockTex: " + _lockTex);
	}

    void OnEnable()
    {
        _lockTex = (Texture2D)Resources.LoadAssetAtPath("Assets/Textures/Editor/lock.png", typeof(Texture2D));
        //Debug.LogWarning("_lockTex: " + _lockTex);


    }

	int indexOfType()
	{
		for (int i = 0; i < TestTypes._fulltypeOptions.Length; i++) {
			Debug.LogWarning(myTarget._elementType);
						if (myTarget._elementType == TestTypes._fulltypeOptions [i])
								return i;
				}
		return 0;
	}

	// Update is called once per frame
	void Update () {
	
	}

    public override void OnInspectorGUI()
    {
        if (_foldout == null)
            _foldout = new List<bool>();

        GUI.changed = false;

        base.OnInspectorGUI();

        myTarget = (CaspDictionary)target;

		if (myTarget.keys == null || myTarget.values == null)
			myTarget.initDic ();

		_typeSelected = indexOfType ();

        //if (myTarget._dic == null)
        //    myTarget._dic = new Dictionary<string, GameObject>();

        //insertToDic(myTarget._dic);
        //myTarget.Dic = drawDictionary(myTarget.Dic);

        //drawAsDictionary(myTarget.keys, myTarget.values);

		drawTypePopup ();

        drawAsDictionary(myTarget.keys, myTarget.values);


        if (GUI.changed)
            EditorUtility.SetDirty(myTarget);

    }

	void drawTypePopup ()
	{
		_typeSelected = EditorGUILayout.Popup (_typeSelected, TestTypes._typeOptions);

		Debug.LogWarning ("Set dirty: " + TestTypes._fulltypeOptions [_typeSelected]);
		myTarget._elementType = TestTypes._fulltypeOptions [_typeSelected];
		EditorUtility.SetDirty (myTarget);
	}

    void insertToDic(string key, GameObject value, Dictionary<string, GameObject> dic)
    {
        Debug.LogWarning("add data");

        dic[key] = value;
        //dic["teste"] = new GameObject("bla");

    }

	void drawAsDictionary<T>(List<string> keys, List<T> values)  where T : UnityEngine.Object//UnityEngine.Component
    {
        //int lastNFields = _nFields;
        //
        //_nFields = EditorGUILayout.IntField("Size",_nFields);
        //
        //if (_nFields != lastNFields)
        //{
        //    _keys = new string[_nFields];
        //    _values = new GameObject[_nFields];
        //}

        EditorGUI.indentLevel = 0;


        //EditorGUILayout.BeginHorizontal();
        _showDictionary =  EditorGUILayout.Foldout(_showDictionary,"Dictionary");

		//Debug.LogWarning ("keys.:" + keys);

        if (_showDictionary)
        {
            _locked = EditorGUILayout.ToggleLeft(new GUIContent(_lockTex, "Lock"), _locked);

            //EditorGUILayout.LabelField("Dictionary");

            EditorGUI.indentLevel = 1;

            //float lineHeight = 33;

            for (int i = 0; i < keys.Count; i++)
            {
                EditorGUI.indentLevel = 1;

                EditorGUILayout.BeginHorizontal();




                string edittedKey = EditorGUILayout.TextField( keys[i], GUILayout.MaxWidth(100f));

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
                //if (!keys.Contains(edittedKey) && !edittedKey.Equals(keys[i]))
                //    keys[i] = edittedKey;
                //else
                //    EditorGUILayout.HelpBox("The entry \"" + keys[i] + "\" key cannot be changed to, because such key already exists in the dictionary on entry " + collisionIndex, MessageType.Error);

                EditorGUI.indentLevel = 2;

                //T edditedValue = (T)EditorGUILayout.ObjectField( values[i], typeof(T),true, GUILayout.Width(200f));
				Type selectedtype = Type.GetType(TestTypes._fulltypeOptions[_typeSelected]);

				T edditedValue = (T)EditorGUILayout.ObjectField( values[i], selectedtype,true, GUILayout.Width(200f));
                updateValues(values,i,edditedValue);
                
                if (GUILayout.Button(new GUIContent("-", "Remove"), EditorStyles.miniButton, GUILayout.Width(20f)))
                {
                    keys.Remove(keys[i]);
                    values.Remove(values[i]);
                }
                if( i!=0)
                if (GUILayout.Button(new GUIContent("U", "Move entry up"), EditorStyles.miniButton, GUILayout.Width(20f)))
                {
                    string keyAux = keys[i];
                    T valueAux = values[i];
                    
                    keys.Remove(keys[i]);
                    values.Remove(values[i]);

                    keys.Insert(i - 1, keyAux);
                    values.Insert(i - 1, valueAux);

                }
                if(i != keys.Count - 1)
                if (GUILayout.Button(new GUIContent("D", "Move entry down"), EditorStyles.miniButton, GUILayout.Width(20f)) )
                {
                    string keyAux = keys[i];
                    T valueAux = values[i];

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
        drawEmptyField<T>(keys, values);
    
    }

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


	private void drawEmptyField<T>(List<string> keys, List<T> values)where T : UnityEngine.Object// where T : UnityEngine.Component
    {
        EditorGUI.indentLevel = 0;

        _showNewEntry = EditorGUILayout.Foldout(_showNewEntry,"New entry");

        if (!_showNewEntry)
            return;


		_useGameObjectNameAsKey = EditorGUILayout.Toggle ("Use GameObject name as key",_useGameObjectNameAsKey);//(new GUIContent(_lockTex, "Lock"), _locked);


        //EditorGUILayout.LabelField("New entry");
        EditorGUI.indentLevel = 1;
        _newKey = EditorGUILayout.TextField("New Key",_newKey);

		Type selectedtype = Type.GetType (TestTypes._fulltypeOptions[_typeSelected]);//"UnityEngine.Collider, UnityEngine");

		//Debug.LogWarning ("selectedtype1:" + TestTypes._fulltypeOptions[_typeSelected]);
		//Debug.LogWarning ("selectedtype2:" + selectedtype);

		UnityEngine.Object ob = EditorGUILayout.ObjectField("New Value", _newValue,selectedtype, true);
		//dynamic ob = EditorGUILayout.ObjectField("New Value", _newValue,selectedtype, true);
        if (ob != null) 
		{
			if(selectedtype == typeof(GameObject))
			   _newValue = ob as GameObject;
		    else
				_newValue = (T)ob;

			if(_useGameObjectNameAsKey)
				_newKey = _newValue.name;
		}
			//_newValue = Convert.ChangeType (ob, selectedtype);
        else
            _newValue = null;


        if (_newValue != null)
        {
            if (string.IsNullOrEmpty(_newKey))
                EditorGUILayout.HelpBox("The entry key cannot be null", MessageType.Error);
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
                        values.Add((T)(_newValue));

                        _newKey = "";
                        _newValue = null;
                    }
                }
            }


        }
        else
            if (!string.IsNullOrEmpty(_newKey))
                EditorGUILayout.HelpBox("The entry value cannot be null", MessageType.Error);

        //if (keys.Contains(_newKey) )
        //{
        //    EditorGUILayout.HelpBox("The entry \"" + _newKey + "\" is on the already in the dictionary", MessageType.Error);
        //}
        //else if (string.IsNullOrEmpty(_newKey) && _newValue != null)
        //{
        //    EditorGUILayout.HelpBox("The entry key cannot be null", MessageType.Error);
        //}
        //else
        //{
        //    if (GUILayout.Button("Add Entry"))
        //    {
        //
        //
        //        keys.Add(_newKey);
        //        values.Add((T)(_newValue));
        //
        //        _newKey = "";
        //        _newValue = null;
        //    }
        //}
    }


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
