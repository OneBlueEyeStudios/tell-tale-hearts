using UnityEngine;
using System.Collections;

[RequireComponent(typeof(Collider))]

public class StopMusicTrigger : MonoBehaviour {

	void OnTriggerEnter(Collider col)
	{
		if (col.CompareTag ("Player")) 
		{
			SoundManagerJono._instance.stopMusic();
		}
	}
}	