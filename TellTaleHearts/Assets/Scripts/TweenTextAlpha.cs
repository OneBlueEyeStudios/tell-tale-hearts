using UnityEngine;
using System.Collections;

using UnityEngine.UI;
[RequireComponent(typeof(Text))]
public class TweenTextAlpha : MonoBehaviour {

	Text _text;
	public float _duration;
	public float _delay;

	public float _startAlpha, _endAlpha;
	float _currentAlpha;

	float _elapsed;
	bool _started;

	void Awake()
	{
		_text = GetComponent<Text> ();
		_currentAlpha = _endAlpha;
	}
	// Use this for initialization
	void Start () {
	
		Invoke ("start", _delay);

	}

	void start()
	{
		_started = true;
	}
	
	// Update is called once per frame
	void Update () {
	
		if (_started) 
		{
			_elapsed +=	Time.deltaTime;


			if(_elapsed > _duration)
			{
				if(_currentAlpha == _startAlpha)
					_currentAlpha = _endAlpha;
				else
					_currentAlpha = _startAlpha;

				_elapsed = 0;
			}

			float t = _elapsed/_duration;

			Color c = _text.color;
			c.a = Mathf.Lerp(_text.color.a,_currentAlpha,Time.deltaTime*_duration);

			_text.color = c;

		}
	}
}
