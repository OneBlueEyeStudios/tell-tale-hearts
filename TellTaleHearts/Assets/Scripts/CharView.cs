using UnityEngine;
using System.Collections;

public class CharView : MonoBehaviour
{
		[Range(0.1f,10f)]
		public float
				_grabDistance;
		[Range(0.1f,10f)]
		public float
				_objectDistance;
		public GameObject _currentlyCentered;
		public Transform _handSocket;
		public Transform _lastObjectParent;
		public MouseLook _mouseLookX, _mouseLookY;
		bool _mouseLookEnabled = true;
		Vector3 _lastMousePosition;
		public SmoothRandomPos _cameraSmooth;
		public GameObject _eyelids;
		public GameObject _themeSplash;
		public CharacterMotor2 _charMotor;
		bool _hasGameBegun;
		public GameObject _soundManagerPref;
		bool _isHoldingObject;
		bool _canDrop;
		public HeadBob2 _headBob;
		public static CharView _instance;
		public bool _useShift;

		void Awake ()
		{
				_instance = this;

				if (SoundManager._instance == null) {
						Instantiate (_soundManagerPref);
				}
		}

		// Use this for initialization
		void Start ()
		{
				SoundManager._instance.gameStart ();
				_hasGameBegun = false;
				setMouseLookEnabled (false);
				setCharacterMotorEnabled (false);
				//SoundManager._instance.lowerThemeMusic ();
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

		void startGame ()
		{
				//_cameraSmooth.returnToOriginalPos ();
		
				Destroy (_cameraSmooth);
				Destroy (_eyelids.gameObject);
				Destroy (_themeSplash.gameObject);

				StageManager._instance.OnEventTrigger (Constants.GAME_START_TRIGGER);
		
				setMouseLookEnabled (true);
				setCharacterMotorEnabled (true);
		
				SoundManager._instance.lowerThemeMusic ();

				_hasGameBegun = true;
		}

		// Update is called once per frame
		void Update ()
		{


				//if (_useShift)
				//		setMouseLookEnabled (!Input.GetKey (KeyCode.LeftShift));

				_handSocket.transform.position = Camera.main.transform.position + Camera.main.transform.forward * _objectDistance;

				if (Input.GetButtonDown ("Fire1") && !_hasGameBegun) {

						startGame ();
				}

	
				Ray r = Camera.main.ScreenPointToRay (new Vector3 (Screen.width / 2f, Screen.height / 2f, 0));

				RaycastHit hit;

				// Interact with cops
				if (Input.GetButtonDown ("Fire1") && Physics.Raycast (r, out hit, 1f, LayerMasks.CopsLayerMask)) 
				{
					Cop cop = hit.transform.GetComponent<Cop>();
					CopType type = cop._copType;

					if(cop._waitingForDialogue)
					{
						if(type == CopType.bad)
							StageManager._instance.OnEventTrigger(Constants.BAD_COP_CLICK);
						else 
							StageManager._instance.OnEventTrigger(Constants.GOOD_COP_CLICK);
					}
					else
						SoundManager._instance.playDismissalLine(type);


					
							

				}

				if (!_isHoldingObject && Physics.Raycast (r, out hit, _grabDistance, LayerMasks.GrabbableLayerMask | LayerMasks.InteractableLayerMask)) {
						if (hit.transform.gameObject == _currentlyCentered) {

						} else {

								if (_currentlyCentered != null) {
										unlightObject (_currentlyCentered);
								}

								Item item = hit.transform.GetComponent<Item> ();
								Interactable interactable = hit.transform.GetComponent<Interactable> ();
								if ((interactable != null && interactable._interactEnabled) || item != null) {

										_currentlyCentered = hit.transform.gameObject;
										lightUpObject (_currentlyCentered);
								}


						}
				} else {
						if (_isHoldingObject) {
								unlightObject (_currentlyCentered);
						} else if (_currentlyCentered != null) {

								unlightObject (_currentlyCentered);
								_currentlyCentered = null;
						}
				}

				//if (_currentlyCentered != null) 
				{
						if (Input.GetButtonDown("Fire1")) {

								if (_currentlyCentered != null && _currentlyCentered.layer == LayerMasks.GrabbableLayerIndex) {
										if (_isHoldingObject && _canDrop) {
												Item item = _currentlyCentered.GetComponent<Item> ();
												item.released ();

												ItemAudio itemAudio = _currentlyCentered.GetComponent<ItemAudio> (); 
												if (itemAudio != null) {
														itemAudio.released ();
												}

												_currentlyCentered.transform.parent = _lastObjectParent;
						
												iTween.MoveTo (_currentlyCentered.gameObject, iTween.Hash ("position", Vector3.zero, "time", 1.0f, "islocal", true));
												
												if (item._rotateWhenRelease)
														//iTween.RotateTo (_currentlyCentered.gameObject, iTween.Hash ("rotation", Vector3.zero, "time", 1.0f, "islocal", true));
														iTween.RotateTo (_currentlyCentered.gameObject, iTween.Hash ("rotation", item._defaultFacing, "time", 1.0f, "islocal", true));
						
												_lastObjectParent = null;
												_currentlyCentered = null;

												_isHoldingObject = false;

												setMouseLookEnabled (true);
												setCharacterMotorEnabled (true);
												
										} else if (!_isHoldingObject && _currentlyCentered != null) {

												_lastObjectParent = _currentlyCentered.transform.parent;
												_currentlyCentered.transform.parent = _handSocket;
												Item item = _currentlyCentered.GetComponent<Item> ();
												item.grabbed ();

												ItemAudio itemAudio = _currentlyCentered.GetComponent<ItemAudio> (); 
												if (itemAudio != null) {
														itemAudio.grabbed ();
												}

												iTween.MoveTo (_currentlyCentered.gameObject, iTween.Hash ("position", Vector3.zero, "time", 1.0f, "islocal", true, "oncompletetarget", gameObject, "oncomplete", "onMoveToComplete"));

												iTween.RotateTo (_currentlyCentered.gameObject, iTween.Hash ("rotation", item._frontFacing, "time", 1.0f, "islocal", true));
						
												setMouseLookEnabled (false);
												setCharacterMotorEnabled (false);
												_isHoldingObject = true;

												_canDrop = false;
										}
										
								} else if (_currentlyCentered != null && _currentlyCentered.layer == LayerMasks.InteractableLayerIndex) {
										
										Interactable interactable = _currentlyCentered.GetComponent<Interactable> ();
										interactable.interact ();

										ItemAudio itemAudio = _currentlyCentered.GetComponent<ItemAudio> (); 
										if (itemAudio != null) {
											itemAudio.grabbed ();
										}

								}
							}	else if (Input.GetButtonDown("Fire2")) {
						//} else if (Input.GetKeyDown (KeyCode.Q)) {
								//if (!_mouseLookEnabled) {
								if (_isHoldingObject) {
										if (_lastObjectParent.GetComponent<Clue> () != null)
												_lastObjectParent.GetComponent<Clue> ()._available = false;
										if (_currentlyCentered.GetComponent<Item> () != null)
												_currentlyCentered.GetComponent<Item> ().putInInventory ();



										ItemAudio itemAudio = _currentlyCentered.GetComponent<ItemAudio> (); 
										if (itemAudio != null) {
												itemAudio.released ();
										}
					
										//Destroy(_currentlyCentered.gameObject);
										_currentlyCentered.gameObject.SetActive (false);
										//_currentlyCentered.renderer.enabled = false;
										_currentlyCentered = null;
										
										_lastObjectParent = null;
									
										setMouseLookEnabled (true);
										setCharacterMotorEnabled (true);
										_isHoldingObject = false;
								}
						}
				}
			

				if (!_mouseLookEnabled) {
						if (_currentlyCentered != null) {
		
								Vector3 delta = Input.mousePosition - _lastMousePosition;

								// 	OLD, BEFORE POSTCARD
								//_currentlyCentered.transform.Rotate (new Vector3 (0, -delta.x, 0), Space.Self	);

								// NEW, AFTER POSTCARD
								//_currentlyCentered.transform.Rotate (new Vector3 (0, 0, delta.x), Space.Self);
						}
				}


				_lastMousePosition = Input.mousePosition;
		}

		void onMoveToComplete ()
		{
				_canDrop = true;
		}

		public void setMouseLookEnabled (bool enabled)
		{
				_mouseLookX.enabled = enabled;
				_mouseLookY.enabled = enabled;

				_mouseLookEnabled = enabled;
		}

		public void setCharacterMotorEnabled (bool enabled)
		{
				_headBob.enabled = enabled;
				_charMotor.enabled = enabled;


		}
}
