using UnityEngine;
using System.Collections;

public class CharView : MonoBehaviour
{
		[Range(0.1f,10f)]
		public float _grabDistance;
	[Range(0.1f,10f)]
	public float _objectDistance;
	//Material _lastObjectMaterial;
	//	Material[] _lastObjectMaterials;
	//	public Material _glowItemMaterial;
	//	public Shader _glowShader;
	//	Shader _lastShader;
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
	void Awake()
	{
		if (SoundManager._instance == null) 
		{
			Instantiate(_soundManagerPref);
		}
	}

		// Use this for initialization
		void Start ()
		{
		_hasGameBegun = false;
			setMouseLookEnabled (false);
		setCharacterMotorEnabled(false);
		//SoundManager._instance.lowerThemeMusic ();
		}


		void lightUpObject (GameObject go)
		{
		Lightable lightable = go.GetComponent<Lightable> ();
		if (lightable != null)
						lightable.lightUp ();

				//foreach (Renderer r in go.GetComponents<Renderer>())
				//		lightUp (r);

				//_lastObjectMaterials = _currentlyCentered.renderer.ma
		}

	/*
		void lightUp (Renderer renderer)
		{
				//_lastObjectMaterials = _currentlyCentered.renderer.ma
				_lastShader = _currentlyCentered.transform.renderer.material.shader;

				_currentlyCentered.transform.renderer.material.shader = _glowShader;
				_currentlyCentered.transform.renderer.material.SetColor ("_RimColor", Color.blue);
		}
		*/

		void unlightObject (GameObject go)
		{
		Lightable lightable = go.GetComponent<Lightable> ();
		if (lightable != null)
			lightable.unlight ();
		//		foreach (Renderer r in go.GetComponents<Renderer>())
		//				unlight (r);
		}

	/*
		void unlight (Renderer renderer)
		{
				_currentlyCentered.transform.renderer.material.shader = _lastShader;
		}
*/

		// Update is called once per frame
		void Update ()
		{
			_handSocket.transform.position = Camera.main.transform.position + Camera.main.transform.forward * _objectDistance;

		if (Input.GetButtonDown ("Fire1") && !_hasGameBegun) {

			_cameraSmooth.returnToOriginalPos();

			Destroy(_cameraSmooth);
			Destroy(_eyelids.gameObject);
			Destroy(_themeSplash.gameObject);

			_hasGameBegun = true;

			StageManager._instance.OnEventTrigger("GameStart");

			setMouseLookEnabled(true);
			setCharacterMotorEnabled(true);

			SoundManager._instance.lowerThemeMusic();

		}

	
				Ray r = Camera.main.ScreenPointToRay (new Vector3 (Screen.width / 2f, Screen.height / 2f, 0));

				RaycastHit hit;

				if (Physics.Raycast (r, out hit, _grabDistance, LayerMasks.GrabbableLayerMask | LayerMasks.InteractableLayerMask)) {
						if (hit.transform.gameObject == _currentlyCentered) {
								//			Debug.LogWarning ("Same item");
						} else {

//								Debug.LogWarning ("Different item");
								if (_currentlyCentered != null) {
										//_currentlyCentered.transform.renderer.material.shader = _lastShader;
										unlightObject (_currentlyCentered);
								}

								_currentlyCentered = hit.transform.gameObject;

								lightUpObject (_currentlyCentered);

								//_lastShader = _currentlyCentered.transform.renderer.material.shader;

								//_currentlyCentered.transform.renderer.material.shader = _glowShader;
								//_currentlyCentered.transform.renderer.material.SetColor ("_RimColor", Color.blue);
						}
				} else {
						if (_currentlyCentered != null) {
								//					Debug.LogWarning ("No item");
								//_currentlyCentered.transform.renderer.material.shader = _lastShader;

								unlightObject (_currentlyCentered);
								_currentlyCentered = null;
						}
				}

				if (_currentlyCentered != null) {
						//if (Input.GetButtonDown ("Fire1")) {
			if (Input.GetKeyDown(KeyCode.E)) {

								//Debug.LogWarning ("_currentlyCentered.layer:" + _currentlyCentered.layer);
								if (_currentlyCentered.layer == LayerMasks.GrabbableLayerIndex) {
										if (!_mouseLookEnabled) {
												_currentlyCentered.transform.parent = _lastObjectParent;
												//iTween.MoveTo (_currentlyCentered.gameObject, _handSocket.transform.position, 1);
				
												iTween.MoveTo (_currentlyCentered.gameObject, iTween.Hash ("position", Vector3.zero, "time", 1.0f, "islocal", true));
												iTween.RotateTo (_currentlyCentered.gameObject, iTween.Hash ("rotation", Vector3.zero, "time", 1.0f, "islocal", true));
				
												_lastObjectParent = null;
				
												setMouseLookEnabled (true);
										} else			if (_currentlyCentered != null) {
		
												_lastObjectParent = _currentlyCentered.transform.parent;
												_currentlyCentered.transform.parent = _handSocket;
												//iTween.MoveTo (_currentlyCentered.gameObject, new , 1);

											Item item = _currentlyCentered.GetComponent<Item>();

											iTween.MoveTo (_currentlyCentered.gameObject, iTween.Hash ("position", Vector3.zero, "time", 1.0f, "islocal", true));
											iTween.RotateTo (_currentlyCentered.gameObject, iTween.Hash ("rotation",item._frontFacing , "time", 1.0f, "islocal", true));

												setMouseLookEnabled (false);



										}
								} else if (_currentlyCentered.layer == LayerMasks.InteractableLayerIndex) {
										//Debug.LogWarning ("aisjdasjdlajsd");

										Interactable interactable = _currentlyCentered.GetComponent<Interactable> ();
										interactable.interact ();
								}
						}
						//else if (Input.GetButtonDown ("Fire2")) {
			else if (Input.GetKeyDown(KeyCode.P)){
								if (!_mouseLookEnabled) {

					_currentlyCentered.GetComponent<Item>().putInInventory();
					_currentlyCentered.gameObject.SetActive(false);
					_currentlyCentered= null;;
									//_currentlyCentered.transform.parent = _lastObjectParent;
									//iTween.MoveTo (_currentlyCentered.gameObject, _handSocket.transform.position, 1);
									
									//iTween.MoveTo (_currentlyCentered.gameObject, iTween.Hash ("position", Vector3.zero, "time", 1.0f, "islocal", true));
									//iTween.RotateTo (_currentlyCentered.gameObject, iTween.Hash ("rotation", Vector3.zero, "time", 1.0f, "islocal", true));
									
									_lastObjectParent = null;
									
									setMouseLookEnabled (true);
								}
							}
				}
			
				if (!_mouseLookEnabled) {
						if (_currentlyCentered != null) {
		
								Vector3 delta = Input.mousePosition - _lastMousePosition;

				// 	OLD, BEFORE POSTCARD
								//_currentlyCentered.transform.Rotate (new Vector3 (0, -delta.x, 0), Space.Self	);

				// NEW, AFTER POSTCARD
				_currentlyCentered.transform.Rotate (new Vector3 (0, 0, delta.x), Space.Self	);
						}
				}


				_lastMousePosition = Input.mousePosition;
		}

		void setMouseLookEnabled (bool enabled)
		{
				_mouseLookX.enabled = enabled;
				_mouseLookY.enabled = enabled;

				_mouseLookEnabled = enabled;
		}

	void setCharacterMotorEnabled (bool enabled)
	{
		_charMotor.enabled = enabled;


	}
}
