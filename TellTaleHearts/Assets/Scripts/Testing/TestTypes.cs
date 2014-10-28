using UnityEngine;
using System.Collections;
using System;

public static class TestTypes {
	public static string[] _fulltypeOptions ={"System.String","UnityEngine.GameObject, UnityEngine","UnityEngine.Transform, UnityEngine","UnityEngine.Collider, UnityEngine"};
	public static string[] _typeOptions = {"String","GameObject","Transform","Collider"};
	public static Type[] _types = {typeof(System.String),typeof(GameObject),typeof(Transform),typeof(Collider)};
}
