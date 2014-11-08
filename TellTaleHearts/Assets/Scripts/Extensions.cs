using UnityEngine;
using System.Collections;

public static class Extension
{
	public static string cutFromTo(this string line, int indexFirst, int indexLast)
	{
		//int indexFirst = line.IndexOf ("[[");
		//int indexLast = line.LastIndexOf ("]]") - 2;
		//int indexLast = lines [i].IndexOf("]")-1;
		int length = line.Length - (line.Length - indexLast) - indexFirst;
		//int length = line.Length - (indexLast - indexFirst);
		
		//		Debug.LogWarning ("length: "+line.Length+"     first: " + indexFirst + "    last:" + indexLast);
		
		
		return line.Substring(indexFirst,length);
	}
}