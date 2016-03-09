using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class ReadyGo : MonoBehaviour
{
	/* Atributos */
	[Header ("Externals")]
	public Text txt;

	bool starting;
	GameController gCScript;

	/* Aplicacion al motor */
	void Start ()
	{
		// Prevension
		starting = true;
		// Mem Cache
		gCScript = GameObject.FindGameObjectWithTag ("GameController").GetComponent<GameController> ();
	}

	void Update ()
	{
		if (starting)
		{
			// ReadyGo
			if (Time.timeSinceLevelLoad < gCScript.timeToStart / 2) {
				txt.text = "Ready?";
			} else if (Time.timeSinceLevelLoad > gCScript.timeToStart / 2 && Time.timeSinceLevelLoad < gCScript.timeToStart) {
				txt.text = "Go!";
			} else if (Time.timeSinceLevelLoad > gCScript.timeToStart) {
				txt.text = "";
			}
		}
	}
}