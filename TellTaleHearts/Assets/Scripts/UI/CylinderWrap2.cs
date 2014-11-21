using UnityEngine;
using System.Collections;

public enum axis{x,y,z}

public class CylinderWrap2 : MonoBehaviour {


	public float radius;

	public axis _mainAxis;
	public axis _secondaryAxis;

	public Vector3 _childDefaultRotation;
	public axis _childForwardAxis;

	public float _angle= 360;

	[ContextMenu("Wrap")]
	void wrap()
	{

		int nChilds = transform.childCount;

		float angleDelta = _angle / (nChilds);

		float angleDeltaRad = Mathf.Deg2Rad * angleDelta;

		for(int i = 0; i < nChilds; i++)
		{

			Transform currentChild = transform.GetChild(i);
			if(_mainAxis==axis.x && _secondaryAxis==axis.y) 
			currentChild.transform.localPosition = new Vector3(Mathf.Sin(angleDeltaRad*i)*radius,0,Mathf.Cos(angleDeltaRad*i)*radius);
			else if(_mainAxis==axis.x && _secondaryAxis==axis.z)
				currentChild.transform.localPosition = new Vector3(Mathf.Sin(angleDeltaRad*i)*radius,0,Mathf.Cos(angleDeltaRad*i)*radius);
			else if(_mainAxis==axis.y && _secondaryAxis==axis.z)
				currentChild.transform.localPosition = new Vector3(0,Mathf.Sin(angleDeltaRad*i)*radius,Mathf.Cos(angleDeltaRad*i)*radius);
				//currentChild.transform.localPosition = new Vector3(0,Mathf.Sin(angleDeltaRad*i)*radius,Mathf.Cos(angleDeltaRad*i)*radius);

			//currentChild.transform.forward = ( transform.localPosition - currentChild.transform.localPosition).normalized;
			//currentChild.transform.localEulerAngles = new Vector3(i*angleDelta,180,0);

			Vector3 newRotation = _childDefaultRotation;
			switch (_childForwardAxis) {
			case axis.x:
				newRotation.x =i*angleDelta;
				break;
			case axis.y:
				newRotation.y =i*angleDelta;
				break;
			case axis.z:
				newRotation.z =i*angleDelta;
				break;
			default:
			break;
			}
			currentChild.transform.localEulerAngles = newRotation;


			//currentChild.transform.localEulerAngles = new Vector3(0,i*angleDelta,90);

		}


	}

}
