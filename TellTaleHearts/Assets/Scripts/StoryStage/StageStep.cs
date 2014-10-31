using UnityEngine;
using System.Collections;

public abstract class StageStep : MonoBehaviour {

	public bool _isValid = true;

	public abstract void onStart();
	public abstract void execute();
	public abstract void onEnd();
	public void stop()
	{
		_isValid = false;
	}
}
