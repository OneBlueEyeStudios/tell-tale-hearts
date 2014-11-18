using UnityEngine;
using System.Collections;
using Fungus;

[CommandInfo("Scripting", 
             "PopulateWithCops", 
             "PopulateWithCops.")]
public class PopulateWithCops : Command {

	public Transform _originPos;

	public GameObject _sprite1, _sprite2;

	public int _nDuplicates;

	public float _radiusMin, _radiusMax;

	public float _waitTime, _timeDecrease;

	public override void OnEnter ()
	{
		StartCoroutine(populateCops(_sprite1,_nDuplicates));

		Continue ();
	}

	IEnumerator populateCops (GameObject sprite1, int nDuplicates)
	{
		int cont = 0;

		while(cont < nDuplicates)
		{

			Vector3 position = _originPos.position;


			float x = Random.Range(-1f,1f);
			float z = Random.Range(-1f,1f);
			position.y = 0.43f;


			position += new Vector3(x,0,z).normalized * Random.Range(_radiusMin,_radiusMax);


			GameObject sprite = null;
			int index = Random.Range(0,2);
			if(index == 0)
				sprite = _sprite1;
			else
				sprite = _sprite2;

			GameObject go = GameObject.Instantiate(sprite,position,Quaternion.identity) as GameObject;
			go.GetComponent<MoveTowards>().Init(_originPos);


       		cont++;	

			yield return new WaitForSeconds(_waitTime);

			_waitTime -= _timeDecrease;
       }



	}

}
