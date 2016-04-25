using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class Loader : MonoBehaviour
{
	/* Atributos */
	public GameObject tapPlay;
	AsyncOperation opAsync;
	bool waitForSomething;
	bool triggered;

	/* Aplicacion al motor */
	void Start () {
		// Empezamos la carga de escena.
		StartCoroutine (LoadScene());
	}

	void Update () {
		// Cuando el progreso este casi listo
		// habilitamos al jugador para que pueda
		// cambiar escena.
		if (opAsync.progress == 0.9f && Input.anyKeyDown) waitForSomething = true;
		if (opAsync.progress == 0.9f && !triggered) {
			triggered = true;
			tapPlay.SetActive (true);
		}
	}

	/* Metodos de la clase */
	IEnumerator LoadScene () {
		// Cargamos la escena
		opAsync = UnityEngine.SceneManagement.SceneManager.LoadSceneAsync ("gameplay");

		// Evitamos el cambio instantaneo de escena
		opAsync.allowSceneActivation = false;
		do {yield return null;}			
		while (waitForSomething == false);

		// Activamos la escena cuando la variable logica sea cierta.
		opAsync.allowSceneActivation = true;
		yield return opAsync;
	}
}