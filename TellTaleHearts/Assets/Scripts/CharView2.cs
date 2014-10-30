using UnityEngine;
using System.Collections;

public class CharView2 : MonoBehaviour
{
		[Range(0.1f,10f)]
		public float
				_grabDistance;
		[Range(0.1f,10f)]
		public float
				_objectDistanceToCamera;
		public Transform _handSocket;
		public GameObject _mainCamera;
		public GameObject _currentlyCentered;
		public MouseLook _mouseLookX, _mouseLookY;
		Vector3 _lastMousePosition;
		bool _mouseLookEnabled;
		bool _holdingObject;
	bool _canDrop;

		// Use this for initialization
		void Start ()
		{

		}

		void lightUpObject (GameObject go)
		{
				Lightable lightable = go.GetComponent<Lightable> ();
				if (lightable != null)
						lightable.lightUp ();
		}

		void unlightObject (GameObject go)
		{
				Lightable lightable = go.GetComponent<Lightable> ();
				if (lightable != null)
						lightable.unlight ();
		}
	
		void FixedUpdate ()
		{
				//_handSocket.transform.position = Camera.main.transform.position + Camera.main.transform.forward * _objectDistanceToCamera;

	
				Ray r = Camera.main.ScreenPointToRay (new Vector3 (Screen.width / 2f, Screen.height / 2f, 0));

				RaycastHit hit;

				if (Physics.Raycast (r, out hit, _grabDistance, 1 << 8)){//LayerMasks.GrabbableLayerMask | LayerMasks.InteractableLayerMask)) {
						if (hit.transform.gameObject == _currentlyCentered) {

						} else {

								if (_currentlyCentered != null) {
										unlightObject (_currentlyCentered);
								}

								_currentlyCentered = hit.transform.gameObject;

								lightUpObject (_currentlyCentered);

						}
				} else {
						if (_currentlyCentered != null) {

								unlightObject (_currentlyCentered);
								_currentlyCentered = null;
						}
				}

				if (_currentlyCentered != null) {
						if (Input.GetButton ("Fire2") && _holdingObject) {
								setMouseLookEnabled (false);


								Vector3 delta = Input.mousePosition - _lastMousePosition;
				
								_currentlyCentered.transform.Rotate (new Vector3 (delta.y, -delta.x, delta.z), Space.World);
						} else
								setMouseLookEnabled (true);
						if (Input.GetKeyDown (KeyCode.E)) {

								if (_currentlyCentered.layer == LayerMasks.GrabbableLayerIndex) {
										// holding. drop it				
										if (_holdingObject && _canDrop) {
												_currentlyCentered.transform.parent = null;
												_currentlyCentered.collider.isTrigger = false;
												_currentlyCentered.rigidbody.useGravity = true;
											
												_holdingObject = false;
												

										// not holding. pick it and disable rigidbody
										} else if (_currentlyCentered != null) {
		
												_currentlyCentered.transform.parent = _handSocket;
												_currentlyCentered.collider.isTrigger = true;
												_currentlyCentered.rigidbody.useGravity = false;

						iTween.MoveTo (_currentlyCentered.gameObject, iTween.Hash ("position", Vector3.zero, "time", 1.0f, "islocal", true,"oncompletetarget",gameObject,"oncomplete","onMoveToComplete"));

												
												_holdingObject = true;
						_canDrop = false;
										}
								} 
						}

				}

				_lastMousePosition = Input.mousePosition;
		}

	void onMoveToComplete()
	{
		_canDrop = true;
	}

		void setMouseLookEnabled (bool enabled)
		{
				_mouseLookX.enabled = enabled;
				_mouseLookY.enabled = enabled;

				_mouseLookEnabled = enabled;
		}
}
