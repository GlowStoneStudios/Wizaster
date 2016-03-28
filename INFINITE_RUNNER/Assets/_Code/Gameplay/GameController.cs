using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class GameController : MonoBehaviour
{
	/* Atributos */
	[Header ("Game Basics")]
	public int timeToStart;
	public int mainScore;


    public int coinValue;
    int curCoinValue;
    public int manaAdvantage = 0;           // Se le resta a la formula de consumo de mana
    public bool CreditsScene;
    public bool TutorialScene;
    public bool magnet;
    public bool canTele;

	public Slider staminaBar;

    public float ObjectsDragForce = 4f;

	[Header ("Level Spawn")]
	public GameObject[] chunks; //aqui van los prefab de los chunks
    public GameObject[] bigChunks; //Aqui chunks TRIPLES

    public float bigChunkSpawnRate = 5f;

	public int levelLength = 100; //largo del nivel en chunks.
	public float chunkSize = 30; //tamaño de los chunks, en unidades
   
	float curPlaceToSpawnChunks = 0;

	public static GameController instance;

    bool startClock,  LevelEnded, powerTime;

	public bool levelStarted { get; private set; }

	public float TravelDistance = 0;

	/* Aplicacion al motor */
	void Awake ()
	{
		instance = this;

		if (chunks.Length > 0) 
		{
            for (int i = 0; i < levelLength; i++)
            {

                float rnd = Random.value * 100f;
                if (rnd < bigChunkSpawnRate)
                {
                    int randomChunk = Random.Range(0, bigChunks.Length);
                    Vector3 posToSpawn = Vector3.forward * curPlaceToSpawnChunks;
                    GameObject tempChunk = Instantiate(bigChunks[randomChunk], posToSpawn, Quaternion.identity) as GameObject;

                    tempChunk.transform.SetParent(GameObject.Find("Chunks").transform);
                    curPlaceToSpawnChunks += (chunkSize * 3);
                }
                else
                {
                    int randomChunk = Random.Range(0, chunks.Length);
                    Vector3 posToSpawn = Vector3.forward * curPlaceToSpawnChunks;
                    GameObject tempChunk = Instantiate(chunks[randomChunk], posToSpawn, Quaternion.identity) as GameObject;

                    tempChunk.transform.SetParent(GameObject.Find("Chunks").transform);
                    curPlaceToSpawnChunks += chunkSize;
                }
            }
		}

	}

	void Start () 
	{
		// Prevension
		startClock = true;
        mainScore = 0;
        curCoinValue = coinValue;
	}

	void Update () 
	{
		// Llamamos al timer
		if (!levelStarted) InitialCounter (startClock, timeToStart);

		TravelDistance = PlayerBehaviour.instance.selfTrans.position.z;
		staminaBar.value = PlayerBehaviour.instance.stamina;

        if (!CreditsScene || !TutorialScene) {
            return;
        } else 
        {
            ScoreSystem ();
        }

	}

	/* Metodos de la clase */

    public void ScoreSystem ()
    {
        if (LevelEnded)
        {
            // Guardamos el score.
            PlayerPrefs.SetInt ("Score", mainScore);
        }
    }

    public void AddScore (int points) 
    {
        mainScore += points;
        /*
         * 
         *      AGREGAR PARTICULAS Y AUDIO 
         * 
         */
    }


    // ----------------------------------------------------
    // Powers ---------------------------------------------
    public void PowerUp (string curPower, int time)
    {
        // Se activa el tiempo
        StartCoroutine (PowerTime (time));
        // Power ups
        switch (curPower) {
            case "GODMODE":         // Invencibilidad
                //PlayerBehaviour.instance.canBeDamaged = false;
                break;

            case "SLOW":
                if (powerTime) {
                    Time.timeScale = 0.25f;
                } else {
                    Time.timeScale = 1.0f;
                }
                break;

            case "COINBOOST":
                if (powerTime) {
                    curCoinValue = coinValue * 2;
                } else{
                    curCoinValue = coinValue;
                }
                break;


            case "MANA":
                if (powerTime) {
                    manaAdvantage = 25;
                } else {
                    manaAdvantage = 0;
                }
                break;

            case "IMAN":
                if (powerTime) {
                    magnet = true;
                } else {
                    magnet = false;
                }
                break;

            case "TELEPORT":
                if (powerTime) {
                    canTele = true;
                } else {
                    canTele = false;
                }
                break;

            case "RUSH":
                if (powerTime) {
                    //PlayerBehaviour.instance.moveSpeed = PlayerBehaviour.instance.rushSpeed;
                } else {
                    //PlayerBehaviour.instance.moveSpeed = PlayerBehaviour.instance.normalSpeed;
                }
                break;
        }
    }

    public void PowerDown (string curPower, int time)
    {
        StartCoroutine (PowerTime (time));
        switch (curPower) {
            case "FASTBG":
                if (powerTime) {
                    Time.timeScale = 1.75f;
                } else {
                    Time.timeScale = 1.0f;
                }
                break;

            case "MANA":
                if (powerTime) {
                    manaAdvantage = -25;
                } else {
                    manaAdvantage = 0;
                }
                break;

            case "CAM":
                if (powerTime) {
                    Vector3 newRot = new Vector3 (30, -45, 180);
                    Camera.main.transform.Rotate (newRot);  
                } else {
                    Vector3 newRot = new Vector3 (30, -45, 0);
                    Camera.main.transform.Rotate (newRot);  
                }
                break;

            case "SLOW":
                if (powerTime) {
                    //PlayerBehaviour.instance.moveSpeed = PlayerBehaviour.instance.slowSpeed;
                } else {
                    //PlayerBehaviour.instance.moveSpeed = PlayerBehaviour.instance.normalSpeed;
                }
                break;

            case "NOCASH":
                if (powerTime) {
                    curCoinValue = 0;
                } else {
                    curCoinValue = coinValue;
                }
                break;

            case "INK":     // Este power down es sin tiempo, su duración depende del shake del jugador.
                Vector3 inkSpawnPos = new Vector3 (Camera.main.transform.position.x, Camera.main.transform.position.y, Camera.main.transform.position.z + 0.25f);
                //GameObject ink = Resources.Load ("Prefabs/ink") as GameObject;
                //Instantiate(ink, inkSpawnPos, Camera.main.transform.rotation);
                break;
        }
    }

    IEnumerator PowerTime (int time)
    {
        powerTime = true;
        yield return new WaitForSeconds (time);
        powerTime = false;
    }


    // ----------------------------------------------------
    // Counter --------------------------------------------


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