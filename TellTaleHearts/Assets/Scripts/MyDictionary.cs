using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;

[System.Serializable]
public class MyDictionary : MonoBehaviour, IEnumerable<KeyValuePair<string,UnityEngine.Object>>
{


		//public IDictionary _dic;
		public Dictionary<string,UnityEngine.Object> _dic;
		[HideInInspector]
		//	[System.Serializable]
    public List<string>
				keys;
		[HideInInspector]
		//	[System.Serializable]
	public List<UnityEngine.Object>
				values;

		//[HideInInspector]
		//public string _elementType = TestTypes._fulltypeOptions[0];

//	[System.Serializable]
		public Type _keyType;

//	[System.Serializable]
		public Type _valueType;
		[HideInInspector]
		public string
				_keyTypeString;
		[HideInInspector]
		public string
				_valueTypeString;
		[HideInInspector]
		public bool
				_created;

		public void initDic ()//Type a, Type b)
		{
				//keys = createList (_keyType);

				//values = createList (_valueType);

				//_dic = createDictionary (_keyType, _valueType);

				keys = new List<string> ();
				values = new List<UnityEngine.Object> ();


		}

		public IList createList (Type myType)
		{
				Type genericListType = typeof(List<>).MakeGenericType (myType);
				return (IList)Activator.CreateInstance (genericListType);
		}

		public IDictionary createDictionary (Type keyType, Type valueType)
		{
				Type genericDictionaryType = typeof(Dictionary<,>).MakeGenericType (keyType, valueType);
				return (IDictionary)Activator.CreateInstance (genericDictionaryType);
		}

		void Awake ()
		{
				_dic = new Dictionary<string, UnityEngine.Object> ();

				for (int i = 0; i < keys.Count; i++) {
						_dic [keys [i]] = values [i];
				}



				/*
		foreach(KeyValuePair<string, UnityEngine.Object> pair in _dic)
		{
			Debug.LogWarning("Key: "+pair.Key+" Value:"+pair.Value);
		}
		*/

				/*
		_dic = new Dictionary<string, Component>();

        for (int i = 0; i < keys.Count; i++)
        {
            _dic[keys[i]] = values[i];
        }
*/
		}

		public string ToString ()
		{
				return _dic.ToString ();
		}

		public bool TryGetValue (string key, out UnityEngine.Object value)
		{
				return _dic.TryGetValue (key, out value);
		}

		public bool Remove (string key)
		{
				return _dic.Remove (key);
		}

		public bool ContainsKey (string key)
		{
				return _dic.ContainsKey (key);
		}

		public bool ContainsValue (UnityEngine.Object value)
		{
				return _dic.ContainsValue (value);
		}

		public void Clear ()
		{
				_dic.Clear ();
		}

		public void Add (string key, UnityEngine.Object value)
		{
				_dic.Add (key, value);
		}

		public int Count ()
		{
				return _dic.Count;
		}

		//public List<KeyValuePair<string,UnityEngine.GameObject>> 

		public UnityEngine.Object this [string key] {
				get{ return _dic [key];}
				private set{ _dic [key] = value;}
		}

		public IEnumerator<KeyValuePair<string,UnityEngine.Object>> GetEnumerator ()
		{
				return _dic.GetEnumerator ();
		}
	
		// For IEnumerable
		IEnumerator IEnumerable.GetEnumerator ()
		{
				return GetEnumerator ();
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
