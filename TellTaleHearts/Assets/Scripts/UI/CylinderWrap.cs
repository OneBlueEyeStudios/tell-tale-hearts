using UnityEngine;
using System.Collections;

public class CylinderWrap : MonoBehaviour
{


		public float radius;
		public bool hasConfess;
		float _rotateTo;
		public GameObject _centerReference;
		public GameObject _cylinderModel;
		public int _currentCenteredIndex;
		bool _isCentering;
		public bool _axisX;
		public bool _axisY;
		public bool _axisZ;
		public TweePassage _currentPassage;

		[ContextMenu("Wrap")]
		void wrap ()
		{

				int nChilds = transform.childCount;

				float angleDelta = 360f / (nChilds);

				float angleDeltaRad = Mathf.Deg2Rad * angleDelta;

				for (int i = 0; i < nChilds; i++) {

						Transform currentChild = transform.GetChild (i);

						currentChild.transform.localPosition = new Vector3 (0, Mathf.Sin (angleDeltaRad * i) * radius, Mathf.Cos (angleDeltaRad * i) * radius);
						//currentChild.transform.localPosition = new Vector3(0,Mathf.Sin(angleDeltaRad*i)*radius,Mathf.Cos(angleDeltaRad*i)*radius);

						//currentChild.transform.forward = ( transform.localPosition - currentChild.transform.localPosition).normalized;
						currentChild.transform.localEulerAngles = new Vector3 (i * angleDelta, 180, 0);

				}


		}

		public void centerOnIndex (int index)
		{
				if (index >= transform.childCount || index < 0 || _isCentering)
						return;

//		Debug.LogWarning ("Center on index: " + index);

				int nChilds = transform.childCount;
		
				float angleDelta = 360f / (nChilds);


				_rotateTo = angleDelta * index;

				float delta = transform.localEulerAngles.x - (angleDelta * index);

				int deltaIndex = index - _currentCenteredIndex;

				//Debug.LogWarning ("Delta: " + delta);

				float duration = 1.0f;

				//iTween.RotateTo (gameObject, iTween.Hash ("rotation", new Vector3 (angleDelta*index, 180, 0), "time", 1.0f, "easetype", "spring"));
				iTween.RotateBy (gameObject, iTween.Hash ("amount", new Vector3 (deltaIndex * angleDelta / 360f, 0, 0), "time", duration, "easetype", "spring"));
				iTween.RotateBy (_cylinderModel, iTween.Hash ("amount", new Vector3 (0, deltaIndex * angleDelta / 360f, 0), "time", duration, "easetype", "spring"));


				_currentCenteredIndex = index;

				//iTween.ValueTo (gameObject, iTween.Hash ("from", 0, "to", 1, "easetype", "spring", "onupdate", "updateT", "time", 1));

				//iTween.RotateTo(

				_isCentering = true;
				Invoke ("centeredFinish", duration);


		}

		public void updateT (float t)
		{

				int nChilds = transform.childCount;
		
				float angleDelta = 360f / (nChilds);
		
				float angleDeltaRad = Mathf.Deg2Rad * angleDelta;

				transform.rotation = Quaternion.Slerp (transform.rotation, Quaternion.LookRotation (new Vector3 (0, Mathf.Sin (angleDeltaRad * _currentCenteredIndex) * radius, Mathf.Cos (angleDeltaRad * _currentCenteredIndex) * radius).normalized), t);
		}

		void centeredFinish ()
		{
				_isCentering = false;
		}

		int getCenteredIndex ()
		{
				int closestIndex = 0;
				float minDist = Vector3.Distance (transform.GetChild (0).position, _centerReference.transform.position);//Vector3.Distance(transform.GetChild(0).position,_scrollRect.position);



				for (int i = 1; i < transform.childCount; i++) {
						Transform child = transform.GetChild (i);

		

						float dist = Vector3.Distance (child.position, _centerReference.transform.position);//
			
						if (Mathf.Abs (dist) < Mathf.Abs (minDist)) {
								closestIndex = i;
								minDist = dist;
						}
			
				}

				return closestIndex;
		

		}

		// Use this for initialization
		void Start ()
		{
	
				//iTween.RotateBy (gameObject, new Vector3 (5, 0, 0), 5.0f);


		}

		void OnEnable ()
		{
				//spin ();
		}

		public void spin ()
		{
			centerOnIndex (0);

			//iTween.RotateBy (gameObject, iTween.Hash ("amount", new Vector3 (1, 0, 0), "time", 0.5f, "easetype", "spring"));
			//iTween.RotateBy (_cylinderModel, iTween.Hash ("amount", new Vector3 (0, 1, 0), "time", 0.5f, "easetype", "spring"));
		}

		public void centerOnNext ()
		{
			if (hasConfess) {
						//if (_currentCenteredIndex == transform.childCount - 1)
						if (_currentCenteredIndex == _currentPassage.transitions.Count)
								centerOnIndex (0);
						else
								centerOnIndex (_currentCenteredIndex + 1);
				} else {
						//if (_currentCenteredIndex == transform.childCount - 1)
						if (_currentCenteredIndex == _currentPassage.transitions.Count-1)
								centerOnIndex (0);
						else
								centerOnIndex (_currentCenteredIndex + 1);
				}
			//
			Debug.LogWarning("_currentCenteredIndex:"+_currentCenteredIndex);
			Debug.LogWarning("transform.childCount:"+transform.childCount);
//						//if (_currentCenteredIndex == _currentPassage.transitions.Count)
//						if (_currentCenteredIndex == transform.childCount - 1)
//						{
//								centerOnIndex (0);
//						}
//						else
//			
//								centerOnIndex (_currentCenteredIndex + 1);
//				}
//		if (_currentCenteredIndex == _currentPassage.transitions.Count)
//						centerOnIndex (0);
//
//		else
//			centerOnIndex (_currentCenteredIndex+1);
		}

		public void centerOnPrevious ()
		{
				if (_currentCenteredIndex == 0)
		//	centerOnIndex (transform.childCount - 1);
						centerOnIndex (_currentPassage.transitions.Count);
				else
						centerOnIndex (_currentCenteredIndex - 1);
		}

		// Update is called once per frame
		void Update ()
		{
				//Debug.LogWarning ("Centered index: "+getCenteredIndex ());
				/*
		if(Input.GetKeyDown(KeyCode.R))
		{
			centerOnIndex(Random.Range(0,transform.childCount));
		}

		float scrollWheel = Input.GetAxis ("Mouse ScrollWheel");

		Debug.LogWarning ("scrollwheel: " + scrollWheel);

		if (scrollWheel > 0f) 
		{
			//centerOnIndex(_currentCenteredIndex+1);
			centerOnNext();
		}

		if (scrollWheel < 0f) 
		{
			//centerOnIndex(_currentCenteredIndex-1);
			centerOnPrevious();
		}
		*/
				changeText ();
		}

		void changeText ()
		{
				if (_currentPassage == null)
						return;

				_currentCenteredIndex = getCenteredIndex ();
				for (int i = 0; i < _currentPassage.transitions.Count; i++) {
						if (i == _currentCenteredIndex)
			
								transform.GetChild (i).GetComponent<UILabel> ().text = _currentPassage.transitions [i].name.ToUpper ();
						else

								transform.GetChild (i).GetComponent<UILabel> ().text = "CONFESS";

				}
		}
}
