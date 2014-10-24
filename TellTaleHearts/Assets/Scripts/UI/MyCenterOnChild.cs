using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System;

public class MyCenterOnChild : MonoBehaviour {

	RectTransform _scrollRect;

	
	public delegate void ChangedEventHandler(object sender, EventArgs e);

	public event ChangedEventHandler CenteredElementChanged;

	GameObject _centeredElement;

	public float _angleDelta;

	// Use this for initialization
	void Start () {
		_scrollRect =transform.parent.GetComponent<RectTransform>();
	}
	
	// Update is called once per frame
	void Update () {
		//center ();
		rotateElements ();
	}

	public void rotateElements()
	{
		if (transform.childCount == 0)
			return;
		
		int closestIndex = 0;
		float minDist = transform.GetChild(0).position.y - _scrollRect.position.y;//Vector3.Distance(transform.GetChild(0).position,_scrollRect.position);
		
		for(int i = 1; i < transform.childCount; i++)
		{
			Transform child = transform.GetChild(i);
			
			float dist = child.position.y - _scrollRect.position.y;//Vector3.Distance(child.position,_scrollRect.position);
			
			if(Mathf.Abs(dist) < Mathf.Abs(minDist))
			{
				closestIndex = i;
				minDist = dist;
			}
			
		}




		if (_centeredElement != null && _centeredElement.transform == transform.GetChild (closestIndex))
						return;

		Debug.LogWarning ("Closest:" + closestIndex);

		//_centeredElement
		_centeredElement = transform.GetChild (closestIndex).gameObject;
		_centeredElement.transform.localEulerAngles = Vector3.zero;

		for (int i = closestIndex -1; i >= 0; i--) 
		{
			int distance = closestIndex - i;
			Transform current = transform.GetChild (i);
			//current.localEulerAngles = new Vector3(distance*30,0,0);

			iTween.RotateTo(current.gameObject,new Vector3(distance*_angleDelta,0,0),0.2f);

			//Debug.LogWarning("Transform "+i+"should be x rotation: "+(distance*_angleDelta));
		}

		for (int i = closestIndex +1; i < transform.childCount; i++) 
		{
			int distance = closestIndex - i;
			Transform current = transform.GetChild (i);
			//current.localEulerAngles = new Vector3(distance*30,0,0);

			iTween.RotateTo(current.gameObject,new Vector3(distance*_angleDelta,0,0),0.2f);

			//Debug.LogWarning("Transform "+i+"should be x rotation: "+(distance*_angleDelta));
			
		}

		//iTween.MoveBy (gameObject, new Vector3 (0, -minDist, 0), 0.5f);
	}

	public void center()
	{
		Debug.Log ("Center called");
		if (transform.childCount == 0)
						return;

		int closestIndex = 0;
		float minDist = transform.GetChild(0).position.y - _scrollRect.position.y;//Vector3.Distance(transform.GetChild(0).position,_scrollRect.position);

		for(int i = 1; i < transform.childCount; i++)
		{
			Transform child = transform.GetChild(i);

			float dist = child.position.y - _scrollRect.position.y;//Vector3.Distance(child.position,_scrollRect.position);

			if(Mathf.Abs(dist) < Mathf.Abs(minDist))
			{
				closestIndex = i;
				minDist = dist;
			}

			//Debug.LogWarning(i+ " distance: "+ );

		}
//		Debug.LogWarning("Closest: "+closestIndex);

		iTween.MoveBy (gameObject, new Vector3 (0, -minDist, 0), 0.5f);
	}
}
