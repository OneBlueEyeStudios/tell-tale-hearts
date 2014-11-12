using UnityEngine;
using System.Collections;

[ExecuteInEditMode]
public class FaceCameraQuad : MonoBehaviour
{

		public Camera _camera;

	void Awake()
	{
		if (_camera == null)
			_camera = Camera.main;
	}

	
		// Update is called once per frame
		void Update ()
		{
	
				/*if (Application.isEditor) {
						if (Camera.current != null) {
								Vector3 sameHeight = Camera.current.transform.position;
			
								sameHeight.y = transform.position.y;
			
			
			
								Vector3 dir = sameHeight - transform.position;
			
								transform.forward = -dir.normalized;
						}
				} else {
				*/

						Vector3 sameHeight = _camera.transform.position;

						sameHeight.y = transform.position.y;



						Vector3 dir = sameHeight - transform.position;

						transform.forward = -dir.normalized;
				//}
		}
}
