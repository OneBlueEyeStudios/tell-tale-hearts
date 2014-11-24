using UnityEngine;
using System.Collections;

public class Trail : MonoBehaviour
{


		NavMeshAgent _navMeshAgent;
		Transform _start, _end;
		public GameObject _copPicture;
		public Material _goodCop, _badCop;
	TrailRenderer _trail;

		public void Awake ()
		{
				_navMeshAgent = GetComponent<NavMeshAgent> ();
		_trail = GetComponentInChildren<TrailRenderer> ();
		}

		public void DrawPlayerPath (Transform start, Transform end, CopType copType)
		{
				if (copType == CopType.bad)
						_copPicture.renderer.material = _badCop;
				else if (copType == CopType.good)
						_copPicture.renderer.material = _goodCop;
				_start = start;
				_end = end;

				StartCoroutine (DrawPlayerPathCoroutine (start, end));
		}
	
		IEnumerator DrawPlayerPathCoroutine (Transform start, Transform end)
		{
				//while (true) 
				{
						//NavMeshPath path = new NavMeshPath();
						//bool theresPath = NavMesh.CalculatePath(start.position,end.position,-1,path);
			
						//Debug.LogWarning(theresPath+"  path:"+path.corners.Length);
			
						//if(_pathRenderer != null)
						//	Destroy(_pathRenderer.gameObject);
			
						//GameObject go = Instantiate(_pathRendererPrefab,start.position + start.forward*2f,Quaternion.identity) as GameObject;
						//_pathRenderer = go.GetComponent<NavMeshAgent>();
			
						//_pathRenderer.GetComponent<TrailRenderer> ().time = -1f;
						//_pathRenderer.transform.position = start.position;
						
			transform.parent = CharView._instance.transform;

			float time = _trail.time;
			
			_trail.time = -1f;

						yield return new WaitForSeconds (1.5f);


			_trail.enabled = true;
			_trail.time = time;
			transform.parent = null;
						_navMeshAgent.SetDestination (end.position);
			
						//iTween.FadeTo (_copPicture, 0, 1f);
						iTween.ColorTo(_copPicture,iTween.Hash("a", 0f,"time",3,"NamedColorValue", iTween.NamedValueColor._TintColor));
						//			LineRenderer lineRenderer = _pathRenderer.GetComponentInChildren<LineRenderer> ();
						//			lineRenderer.SetVertexCount(path.corners.Length);
						//			int index = 0;
						//			foreach(Vector3 pos in path.corners)
						//			{
						//				Debug.LogWarning("Set pos");
						//
						//				lineRenderer.SetPosition(index,pos);
						//				index++;
						//			}
						//
						//_pathRenderer.GetComponentInChildren<TrailRenderer> ().time = 100f;
						//_pathRenderer.GetComponentInChildren<TrailRenderer> ().enabled = true;
			
						//yield return new WaitForSeconds(10);
						yield return null;
			
						while (!arrived(_navMeshAgent)) {
								yield return null;
						}
			
						//Destroy(_pathRenderer.gameObject.transform.FindChild("Quad").gameObject);
			

				}

			Destroy (_trail, _trail.time);
		}

		bool arrived (NavMeshAgent agent)
		{
				float dist = agent.remainingDistance; 
		
				//		Debug.LogWarning ("agent.remainingDistance:" + agent.remainingDistance);
		
				if (dist != Mathf.Infinity && agent.pathStatus == NavMeshPathStatus.PathComplete && agent.remainingDistance <= agent.stoppingDistance) //Arrived.
						return true;
				return false;
		}

}
