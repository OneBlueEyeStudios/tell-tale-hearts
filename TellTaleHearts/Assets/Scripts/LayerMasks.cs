using UnityEngine;
using System.Collections;

public class LayerMasks {

	public static string Grabbable = "Grabbable";
	public static string Interactable = "Interactable";
	public static string Cops = "Cops";


	public static int GrabbableLayerMask = 1 << 8;
	public static int InteractableLayerMask = 1 << 9;
	public static int CopsLayerMask = 1 << 10;

	public static int GrabbableLayerIndex = 8;
	public static int InteractableLayerIndex = 9;
	public static int CopsLayerIndex = 10;
}
