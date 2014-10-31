using UnityEngine;
using System.Collections;
using System.Collections.Generic;

[System.Serializable]
public class Stage : MonoBehaviour {

	public List<StageStep> _steps;

	[ContextMenu("Reorder")]
	public void reorder()
	{
		for(int i = 0; i < transform.childCount; i++)
		{
			transform.GetChild(i).name = "Step"+i;
		}
	}

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
