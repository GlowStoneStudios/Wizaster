using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class LoaderScript : MonoBehaviour
{
	/* Atributos */
	AsyncOperation Async = null;
	public Text percent;

	/* Aplicacion al motor */
	void Start () {
		//Cargamos
		StartCoroutine (LoadingLevel("gameplay"));
	}

	void Update () {
		// Feedback de progreso
		float progress = Async.progress * 100;
		percent.text = "Loading...\n" + ((int) progress) + " ...";		// La fuente no tiene el caracter de % !!!!!!!!!!!!!!!!!!!!!!!
	}

	/* Metodos de la clase */
	IEnumerator LoadingLevel (string levelToLoad) {
		// Hacemos la carga
		Async = Application.LoadLevelAsync (levelToLoad);
		// Retornamos carga
		yield return Async;
	}
}