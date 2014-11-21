using UnityEngine;
using System.Collections;

public class PlayerTrigger : MonoBehaviour {

	public string _triggerName;

	void OnTriggerEnter(Collider col)
	{
		if (col.CompareTag ("Player")) {
			Debug.LogWarning("trigger living room");
						StageManager._instance.OnEventTrigger (_triggerName);
				}
	}

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
