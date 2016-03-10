using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class MenuController : MonoBehaviour
{
	/* Atributos */
	public string levelToLoad;
	public Text score;

	/* Aplicacion al motor */
	void Start ()
	{
		// Pasar datos a algún documento externo mas adelante
		score.text = PlayerPrefs.GetInt ("Score").ToString ("000000000000");
	}

	void Update ()
	{
		
	}

	/* Metodos de la clase */
	public void ButtonPlay ()
	{
		// Cargar escena
		UnityEngine.SceneManagement.SceneManager.LoadScene (levelToLoad);
	}

	public void ButtonShop ()
	{
	}

	public void ButtonPremium ()
	{
	}

	public void ButtonExit ()
	{
		// Cerramos / detenemos la app
		Application.Quit ();
		#if UNITY_EDITOR
		UnityEditor.EditorApplication.isPlaying = false;
		#endif
	}
}