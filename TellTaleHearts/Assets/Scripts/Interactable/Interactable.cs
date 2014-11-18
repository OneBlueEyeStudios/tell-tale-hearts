using UnityEngine;
using System.Collections;

public abstract class Interactable : MonoBehaviour {

	public string _name;
	public bool _interactEnabled= true;

	public abstract void interact();
	

}
