using UnityEngine;
using System.Collections;
using FMOD.Studio;
using FMOD;

public class Cop : MonoBehaviour
{
	
		public CopType _copType;
		public Animator _animator;
	public SpriteRenderer _spriteRenderer;
		NavMeshAgent _navMeshAgent;
		int _speedFloat = Animator.StringToHash ("Speed");
		int _sideVar = Animator.StringToHash ("Side");
		int _backVar = Animator.StringToHash ("Back");
		int _frontVar = Animator.StringToHash ("Front");

	[HideInInspector]
	public bool _isWalking;

	[HideInInspector]
	public bool _waitingForDialogue;


	public float _walkSpeedAnimationFactor;

	Vector3 _startScale;
	
		// Use this for initialization
		void Start ()
		{
				_startScale = _spriteRenderer.transform.localScale;
				_navMeshAgent = GetComponent<NavMeshAgent> ();

				//_animator = GetComponent<Animator> ();

		}

	
		// Update is called once per frame
		void Update ()
	{
		float speed = Vector3.SqrMagnitude (_navMeshAgent.velocity);

		/*
		if (speed > 0.01f)
						_animator.speed = _walkSpeedAnimationFactor * Mathf.Max (speed, 0.2f);
				else
						_animator.speed = 1;
*/

		if(_isWalking)
			_animator.SetFloat (_speedFloat, 1);
		else
			_animator.SetFloat (_speedFloat, 0);
			//_animator.SetFloat (_speedFloat, speed);

				Vector3 direction = Camera.main.transform.position - transform.position;
				direction.y = 0;

		float angle = AngleSigned(direction.normalized, transform.forward,Vector3.up);

	
				if (angle < -120) {
					_animator.SetTrigger (_backVar);
				}
		else if (angle > -120 && angle < -60)
		{
			_animator.SetTrigger (_sideVar);
			_spriteRenderer.transform.localScale = _startScale; 
			 }
		else 
				if (angle > -60 && angle < 60)
						_animator.SetTrigger (_frontVar);
				else if (angle > 60 && angle < 120) {
						_animator.SetTrigger (_sideVar);
			_spriteRenderer.transform.localScale = new Vector3(-_startScale.x,_startScale.y,_startScale.z); 
			//_spriteRenderer.

				} else if (angle > 120) {
						_animator.SetTrigger (_backVar);
				}
				



//				UnityEngine.Debug.LogWarning ("angle: " + angle);

				//surfaceFloat = Mathf.Lerp(surfaceFloat,4,Time.deltaTime * 0.1f);

				//UnityEngine.Debug.LogWarning ("surfaceFloat: " + surfaceFloat);

				//footstep.setParameterValue ("surface", surfaceFloat);
				UnityEngine.Debug.DrawLine (transform.position, transform.position + transform.forward * 5);
		}

		void OnTriggerStay (Collider col)
		{
				if (col.CompareTag ("Player")) {
						StageManager._instance.OnCopApproach (_copType);
				}

		}

	public void setWalking(bool isWalking)
	{
		_isWalking = isWalking;
		}

	public static float AngleSigned(Vector3 v1, Vector3 v2, Vector3 n)
	{
		return Mathf.Atan2(
			Vector3.Dot(n, Vector3.Cross(v1, v2)),
			Vector3.Dot(v1, v2)) * Mathf.Rad2Deg;
	}
}
