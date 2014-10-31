using UnityEngine;
using System.Collections;
using FMOD.Studio;
using FMOD;

public class FootstepSound : MonoBehaviour {




	EventInstance footstep;
	ParameterInstance surfaceValue;

	public string _eventName;
	public float surfaceFloat;

	NavMeshAgent _navMesh;

	// Use this for initialization
	void Start () {

		_navMesh = gameObject.GetComponent<NavMeshAgent> ();

		footstep = FMOD_StudioSystem.instance.GetEvent (_eventName);



		/*
		FMOD.Studio._3D_ATTRIBUTES attributes;

		footstep.get3DAttributes (out attributes);


		VECTOR v;
		v.x = transform.position.x;
		v.y = transform.position.y;
		v.z = transform.position.z;
		
		attributes.position =  v;
		
		footstep.set3DAttributes (attributes);
		*/
		
		var attributes = FMOD.Studio.UnityUtil.to3DAttributes(transform.position);
		
		footstep.set3DAttributes (attributes);

		/*
		int maxParam;
		footstep.getParameterCount(out maxParam);
		for (int i = 0; i < maxParam; i++) 
		{
			ParameterInstance param;
			
			footstep.getParameterByIndex(i,out param);
			
			PARAMETER_DESCRIPTION desc;
			param.getDescription(out desc);
			
			UnityEngine.Debug.Log(desc.name+" ->min:"+ desc.minimum+", max:"+desc.maximum);
			
		}
		*/
		//footstep.getParameterByIndex(0)
		
		
		footstep.getParameter ("surface", out surfaceValue);
		
		//surfaceFloat = 1f;
		
		
		
		footstep.start ();
		
		
		
		
		//footstep.setParameterValue ("surface", 3);
		

	}
	
	// Update is called once per frame
	void Update () {

		if (Vector3.SqrMagnitude (_navMesh.velocity) > 1)
						surfaceFloat = 1.5f;
		else
			surfaceFloat = 0f;
		
		//UnityEngine.Debug.LogWarning ();

		var attributes = FMOD.Studio.UnityUtil.to3DAttributes(transform.position);
		
		footstep.set3DAttributes (attributes);

		surfaceValue.setValue (surfaceFloat);
		
		/*
		ParameterInstance param;
		
		footstep.getParameterByIndex(0,out param);
		
		float v;
		param.getValue (out v);
		UnityEngine.Debug.Log(v);
		*/
	}
}
