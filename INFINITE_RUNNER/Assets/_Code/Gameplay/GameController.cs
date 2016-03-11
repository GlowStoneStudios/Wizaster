using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class GameController : MonoBehaviour
{
	/* Atributos */
	[Header ("Game Basics")]
	public int timeToStart;
	public int mainScore;

	public Slider staminaBar;

	[Header ("Level Spawn")]
	public GameObject[] chunks; //aqui van los prefab de los chunks
	public int levelLength = 100; //largo del nivel en chunks.
	public float chunkSize = 30; //tamaño de los chunks, en unidades

	float curPlaceToSpawnChunks = 0;

	public static GameController instance;
	bool startClock;
	public bool levelStarted { get; private set; }

	public float TravelDistance = 0;

	/* Aplicacion al motor */
	void Awake ()
	{
		instance = this;

		if (chunks.Length > 0) 
		{
			for (int i = 0; i < levelLength; i++) {
				int randomChunk = Random.Range (0, chunks.Length);
				Vector3 posToSpawn = Vector3.forward * curPlaceToSpawnChunks;
				GameObject tempChunk = Instantiate (chunks [randomChunk], posToSpawn, Quaternion.identity) as GameObject;

				tempChunk.transform.SetParent (GameObject.Find ("Chunks").transform);
				curPlaceToSpawnChunks += chunkSize;
			}
		}

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

		TravelDistance = PlayerBehaviour.instance.selfTrans.position.z;
		staminaBar.value = PlayerBehaviour.instance.stamina;
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