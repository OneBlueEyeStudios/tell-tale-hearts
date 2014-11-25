using UnityEngine;
using System.Collections;

public enum ClueType {OperaTicket, SonLetter, ChequePension, NieceLetter}

public class Clue : MonoBehaviour {

	public bool _available = true;
	public ClueType _clueType;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
