using UnityEngine;
using System.Collections;

public class LoaderScript : MonoBehaviour
{
	AsyncOperation Async = null;

	void Start () {
		StartCoroutine (LoadingLevel("gameplay"));
	}

	IEnumerator LoadingLevel (string i) {
		Async = Application.LoadLevelAsync (i);
		yield return Async;
	}
}