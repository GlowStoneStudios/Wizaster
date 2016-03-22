using UnityEngine;
using System.Collections;

public class IntroductionScene : MonoBehaviour
{
	/* Atributos */
	public string levelToLoad;
	public int touchCooldown;
	public int skipTouches = 3;
	public int secondsToSkip = 1;
	int touches;
	bool touchingScreen, loadScene;

	/* Aplicacion al motor */
	void Start () 
	{
		touches = 0;
	}

	void Update ()
	{
		if (Input.touchCount > 0)
		{
			if (!touchingScreen)
			{
				touchingScreen = true;
				StartCoroutine (CoolDown());
			}

			if (Input.GetTouch(0).phase == TouchPhase.Began) 
			{
				touches++;
			}
		}

		if (touches >= skipTouches && !loadScene) {
			loadScene = true;
			ChangeLevel ();
		}
	}

	/* Metodos de la clase */
	IEnumerator CoolDown () {
		yield return new WaitForSeconds (secondsToSkip);
		if (touches > 0) {
			touches = 0;
		}
	}

	/* Eventos de animacion */
	void ChangeLevel ()
	{
		UnityEngine.SceneManagement.SceneManager.LoadScene (levelToLoad);
	}
}