using UnityEngine;
using System.Collections;

public class MoveTowards : MonoBehaviour {

	public Transform _target;

	public void Init(Transform target)
	{
		_target = target;
	}

	void Update()
	{
		if (_target == null)
						return;

		transform.Translate((_target.position - transform.position) * 0.001f);
	}
}
