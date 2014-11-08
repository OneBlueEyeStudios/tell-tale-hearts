using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;
using Fungus;

[System.Serializable]
public class Sequence
{
	public Transform _node;
	public string _goToNode;
	public float _timeWait;
	public bool _hasClue;
	public string _clueName;
	//string _nextNode;

	public Sequence(string node, float wait, bool hasClue = false)//, string nextNode)
	{
		_goToNode = node;
		_timeWait = wait;
		_hasClue = hasClue;
		_clueName = node;
		//_nextNode = nextNode;
	}
}

public enum CopType{good,bad}

public delegate void CopTypeHandler(CopType agent);

public class SequenceTesting : MonoBehaviour {

	public event CopTypeHandler pathFinished;

	public void OnPathFinished(CopType agent)
	{
		if (pathFinished != null)
			pathFinished (agent);
		}

	public static SequenceTesting _instance;


	public delegate void SequenceDelegate (Fungus.Sequence sequence, Fungus.Command command);
	public event SequenceDelegate eventFinished;

	public void OnEventFinished(Fungus.Sequence sequence, Fungus.Command command)
	{
		if (eventFinished != null) {
			eventFinished(sequence,command);
		}
	}



	MyDictionary _navPointsDictionary;

	public NavMeshAgent _goodCop, _badCop;

	public UILabel _clueFoundLabel;

	Dictionary<string,List<Sequence>> _badCopSequence;
	Dictionary<string,List<Sequence>> _goodCopSequence;
	void Awake()
	{
		_navPointsDictionary = GetComponent<MyDictionary> ();
		_instance = this;
	}

	bool arrived(NavMeshAgent agent)
	{
		float dist=agent.remainingDistance; 

//		Debug.LogWarning ("agent.remainingDistance:" + agent.remainingDistance);

		if (dist != Mathf.Infinity && agent.pathStatus == NavMeshPathStatus.PathComplete && agent.remainingDistance <= agent.stoppingDistance) //Arrived.
						return true;
		return false;
	}


	// Use this for initialization
	void Start () {
	
		/*
		foreach (KeyValuePair<string, UnityEngine.Object> pair in _navPointsDictionary) 
		{
			Debug.LogWarning("Key: "+pair.Key+"-> Value: "+pair.Value);

		}*/

		float waitTime = 3;

		List<Sequence> stage2a = new List<Sequence> ();
		stage2a.Add(new Sequence ("Foyer", 0));

    	_badCopSequence = new Dictionary<string, List<Sequence>>();
		_badCopSequence.Add("Stage2A",stage2a);

		stage2a = new List<Sequence> ();
		stage2a.Add(new Sequence ("Foyer2", 0));
		
		_goodCopSequence = new Dictionary<string, List<Sequence>>();
		_goodCopSequence.Add("Stage2A",stage2a);


		/*
		_badCopSequence.Add (new Sequence ("Bathroom", waitTime));
		_badCopSequence.Add (new Sequence ("Bedroom", waitTime));
		_badCopSequence.Add (new Sequence ("RoommateBedroom", waitTime));
		_badCopSequence.Add (new Sequence ("Clue3", waitTime,true));
		_badCopSequence.Add (new Sequence ("LivingRoom", waitTime));
		_badCopSequence.Add (new Sequence ("Clue1", waitTime,true));
		_badCopSequence.Add (new Sequence ("Kitchen", waitTime));
		_badCopSequence.Add (new Sequence ("Clue2", waitTime,true));



		_goodCopSequence = new List<Sequence> ();
		_goodCopSequence.Add (new Sequence ("Foyer2", waitTime));
		_goodCopSequence.Add (new Sequence ("LivingRoom", waitTime));
		_goodCopSequence.Add (new Sequence ("Clue1", waitTime,true));
		_goodCopSequence.Add (new Sequence ("Pastry", waitTime));
		_goodCopSequence.Add (new Sequence ("Kitchen", waitTime));
		_goodCopSequence.Add (new Sequence ("Clue2", waitTime,true));
		_goodCopSequence.Add (new Sequence ("Bedroom", waitTime));
		_goodCopSequence.Add (new Sequence ("RoommateBedroom", waitTime));
		_goodCopSequence.Add (new Sequence ("Clue3", waitTime,true));
*/


		//StartCoroutine(startSequence (_badCop, _badCopSequence,0));
		//StartCoroutine(startSequence (_goodCop, _goodCopSequence,0));
	}

	public void MoveCharacterList (CopType copType, Transform parentNode,int waitTimePerNode)
	{
		StartCoroutine(MoveCharacterListCoroutine(copType,parentNode, waitTimePerNode));
	}

	public IEnumerator MoveCharacterListCoroutine (CopType copType, Transform parentnode, int waitTimePerNode)
	{
		int index = 0;

		NavMeshAgent cop = null;

		switch (copType) {
		case CopType.bad:
			cop = _badCop;
			break;
		case CopType.good:
			cop = _goodCop;
			break;
		default:
			break;
		}

		while (index < parentnode.childCount) 
		{
			yield return StartCoroutine(MoveCharacterCoroutine(cop,parentnode.GetChild(index).position,true));

			yield return new WaitForSeconds (waitTimePerNode);

			ClueReference clueRef = parentnode.GetChild(index).GetComponent<ClueReference>();
			if(clueRef!=null)
			{
				if(clueRef._reference._available)
				{
					Debug.LogWarning("Cop learned about: "+clueRef._reference._clueType);

					StageManager._instance.copDiscoveredClue(copType,clueRef._reference._clueType);
				}
			}

    		index++;
		}

		pathEnd (cop);
	}

	public void MoveCharacter(CopType copType,Vector3 position)
	{
		switch (copType) {
		case CopType.bad:
			StartCoroutine(MoveCharacterCoroutine(_badCop,position));
			break;
		case CopType.good:
			StartCoroutine(MoveCharacterCoroutine(_goodCop,position));
			break;
		default:
			break;
		}
	}



	IEnumerator MoveCharacterCoroutine(NavMeshAgent agent, Vector3 position, bool multiPath = false)
	{
		
		//Sequence currentSequence = sequence [index];
		
		agent.SetDestination (position);
		//cop.SetDestination (currentSequence._node.position);
		
		yield return null;
		
		while (!arrived(agent)) 
		{

			yield return null;
			
		}

		if(!multiPath)
			pathEnd(agent);
	}
	

	void pathEnd (NavMeshAgent cop)
	{
		if (cop == _badCop)
			OnPathFinished (CopType.bad);
		else if (cop == _goodCop)
			OnPathFinished (CopType.good);
	}

	public void MoveCharacter(CopType copType,string stage)
	{
		switch (copType) {
		case CopType.bad:
			StartCoroutine(startSequence(_badCop,_badCopSequence[stage],0));
			break;
		case CopType.good:
			StartCoroutine(startSequence(_goodCop,_goodCopSequence[stage],0));
			break;
		default:
			break;
		}
	}

	public void startSequence (CopType copType, List<Sequence> sequence, int index = 0)
	{
		NavMeshAgent target = null;
				switch (copType) {
				case CopType.bad:
			target = _badCop;
						break;
				case CopType.good:
			target = _goodCop;

						break;
				default:
						break;
				}
		if(target!=null)
			StartCoroutine (startSequence (target, sequence, index));
	}

	public IEnumerator startSequence (NavMeshAgent cop, List<Sequence> sequence, int index)
	{
		if (index >= sequence.Count || index < 0) 
		{
			pathEnd(cop);

			yield break;
		
		}

		Sequence currentSequence = sequence [index];

		cop.SetDestination ((_navPointsDictionary[currentSequence._goToNode] as Transform).transform.position);
		//cop.SetDestination (currentSequence._node.position);

		yield return null;

		while (!arrived(cop)) 
		{

			yield return null;
		
		}

//		Debug.LogWarning("arrived");



		if (currentSequence._hasClue && !CharInventory._instance.hasOnInventory(currentSequence._clueName) )
		{
			NGUITools.SetActive (_clueFoundLabel.gameObject, true);
			if(cop == _badCop)
				_clueFoundLabel.text = "Bad Cop found out about-> "+currentSequence._clueName;
			//Debug.LogWarning("Bad Cop found out about-> "+currentSequence._clueName);
			else
				_clueFoundLabel.text = "Good Cop found out about-> "+currentSequence._clueName;
			//Debug.LogWarning("Good Cop found out about-> "+currentSequence._clueName);
		}


		yield return new WaitForSeconds (sequence [index]._timeWait);

		NGUITools.SetActive (_clueFoundLabel.gameObject, false);


		StartCoroutine(startSequence (cop, sequence, index + 1));

	}

	public void searchForClue(string clueName)
	{
		NGUITools.SetActive (_clueFoundLabel.gameObject, true);
		//if(cop == _badCop)
			_clueFoundLabel.text = "Cops found out about-> "+clueName;
		//Debug.LogWarning("Bad Cop found out about-> "+currentSequence._clueName);
		//else
		//	_clueFoundLabel.text = "Good Cop found out about-> "+clueName;
		//Debug.LogWarning("Good Cop found out about-> "+currentSequence._clueName);

		Invoke ("hideClueText", 3);
	}

	void hideClueText()
	{
		NGUITools.SetActive (_clueFoundLabel.gameObject, false);
	}
		

	/*Transform getRandomPos()
	{
		int nPoints  = _navPointsDictionary._dic.Count;

		int random = Random.Range (0, nPoints);



		int cont = 0;
		foreach (KeyValuePair<string,Component> pair in _navPointsDictionary._dic) {
			if(cont == random)
				return pair.Value.transform;

			cont++;
				}
		return null;
	}*/

	// Update is called once per frame
	void Update () {

		/*
		if(Input.GetKeyDown(KeyCode.Q))
		{
			int nPoints  = _navPointsDictionary._dic.Count;


			_goodCop.SetDestination(getRandomPos().position);
			_badCop.SetDestination(getRandomPos().position);

			//_navMeshAgent.SetDestination(_target.transform.position);
		}
		*/
	}
}
