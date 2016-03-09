using UnityEngine;
using System.Collections;

public class GameController : MonoBehaviour
{
	/* Atributos */
	[Header ("Game Basics")]
	public int timeToStart;

	PlayerBehaviour playerCharacterScript;
	bool startClock, levelStarted;

	/* Aplicacion al motor */
	void Start () 
	{
		// Mem Cache
		playerCharacterScript = GameObject.FindGameObjectWithTag ("Player").GetComponent<PlayerBehaviour>();

		// Prevension
		startClock = true;
	}

	void Update () 
	{
		// Llamamos al timer
		if (!levelStarted) InitialCounter (startClock, timeToStart);
	}

	/* Metodos de la clase */
	void InitialCounter (bool started, int seconds)
	{
		if (started) 
		{
			// Timer
			if (Time.timeSinceLevelLoad > seconds)
			{
				//Debug.Log ("Level Started!");
				playerCharacterScript.PlayerGo ();
				levelStarted = true;
			}
		}
	}
}