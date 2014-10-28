using UnityEngine;
using System.Collections;
using System.Collections.Generic;

[System.Serializable]
public class CaspDictionary : MonoBehaviour {

    public Dictionary<string, Component> _dic;

    [HideInInspector]
    public List<string> keys;

    [HideInInspector]
	public List<Component> values;

	[HideInInspector]
	public string _elementType = TestTypes._fulltypeOptions[0];

	public void initDic()
	{
		keys = new List<string> ();
		values = new List<Component> ();
	}

    void Awake()
    {
		_dic = new Dictionary<string, Component>();

        for (int i = 0; i < keys.Count; i++)
        {
            _dic[keys[i]] = values[i];
        }

    }

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
