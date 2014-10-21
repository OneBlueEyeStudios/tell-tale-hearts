using UnityEngine;
using System.Collections;

public class LayerMasks {

	public static string Interactable = "Interactable";
	public static string Grabbable = "Grabbable";


	public static int InteractableLayerMask = 1 << 9;
	public static int GrabbableLayerMask = 1 << 8;

	public static int InteractableLayerIndex = 9;
	public static int GrabbableLayerIndex = 8;
}
