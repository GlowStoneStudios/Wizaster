using UnityEngine;
using System.Collections;

public class GameController : MonoBehaviour
{
	/* Atributos */
	[Header ("Game Basics")]
	public int timeToStart;

	public static GameController instance;

	PlayerBehaviour playerCharacterScript;
	bool startClock, levelStarted;

	/* Aplicacion al motor */
	void Awake ()
	{
		instance = this;
	}

	void Start () 
	{
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
				PlayerBehaviour.instance.PlayerGo ();
				levelStarted = true;
			}
		}
	}
}