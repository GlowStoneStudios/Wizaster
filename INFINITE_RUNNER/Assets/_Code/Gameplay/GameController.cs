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
	public bool SpawnChunk = true;
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

	[Header ("Lightning")]
	public Gradient transition;
    public float curHour;

	[Header ("PowerUps")]
	public GameObject doubleMoney;
	public GameObject doubleMana;
	public GameObject Magnet;
	[Space]
	public GameObject particles;
	/* Aplicacion al motor */
	void Awake ()
	{
		instance = this;

		if (SpawnChunk) {
			if (chunks.Length > 0) {
				for (int i = 0; i < levelLength; i++) {

					float rnd = Random.value * 100f;

					if (rnd < bigChunkSpawnRate) 
                    {
						int randomChunk = Random.Range (0, bigChunks.Length);
						Vector3 posToSpawn = Vector3.forward * curPlaceToSpawnChunks;
						GameObject tempChunk = Instantiate (bigChunks [randomChunk], posToSpawn, Quaternion.identity) as GameObject;

						tempChunk.transform.SetParent (GameObject.Find ("Chunks").transform);

                    //    print("Big chunk" + tempChunk.name +" spawned at: "+ curPlaceToSpawnChunks + "  in Z pos. ");

						curPlaceToSpawnChunks += (chunkSize * 3);

					} 
                    else 
                    {
						int randomChunk = Random.Range (0, chunks.Length);
						Vector3 posToSpawn = Vector3.forward * curPlaceToSpawnChunks;
						GameObject tempChunk = Instantiate (chunks [randomChunk], posToSpawn, Quaternion.identity) as GameObject;

						tempChunk.transform.SetParent (GameObject.Find ("Chunks").transform);

                   //     print("Normal chunk" + tempChunk.name +" spawned at: "+ curPlaceToSpawnChunks + "  in Z pos. ");
						curPlaceToSpawnChunks += chunkSize;
					}
				}
			}
		}

		DayTime ();
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
        } 
		else 
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

    public void AddScore (int points, Vector3 pos) 
    {
        mainScore += points;
        /*
         * 
         *      AGREGAR PARTICULAS Y AUDIO 
         *  instanciar objeto de puntaje en variable pos
         */
    }


    // ----------------------------------------------------
    // Powers ---------------------------------------------
	 IEnumerator PowerUpp (string curPower, int time)
    {
        // Se activa el tiempo
        // Power ups
        switch (curPower) {
            case "GODMODE":         // Invencibilidad
                //PlayerBehaviour.instance.canBeDamaged = false;
                break;

            case "SLOW":
                
                    Time.timeScale = 0.25f;
					yield return new WaitForSeconds (time);
                    Time.timeScale = 1.0f;
                
                break;

            case "COINBOOST":
               
                    curCoinValue = coinValue * 2;
					yield return new WaitForSeconds (time);
                    curCoinValue = coinValue;
              
                break;


            case "MANA":
               
                    manaAdvantage = 25;
					yield return new WaitForSeconds (time);
                    manaAdvantage = 0;
                
                break;

            case "IMAN":
                
                    magnet = true;
					yield return new WaitForSeconds (time);
                    magnet = false;
                
                break;

            case "TELEPORT":
               
                    canTele = true;
					yield return new WaitForSeconds (time);
                    canTele = false;
                
                break;

            case "RUSH":
         
					PlayerBehaviour.instance.runMode = PlayerBehaviour.runningMode.Rush;
					yield return new WaitForSeconds (time);
					PlayerBehaviour.instance.runMode = PlayerBehaviour.runningMode.Normal;	
				
                break;
        }
    }

	 IEnumerator PowerDownn (string curPower, int time)
    {
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
			
				PlayerBehaviour.instance.runMode = PlayerBehaviour.runningMode.Slowed;
				yield return new WaitForSeconds (time);
				PlayerBehaviour.instance.runMode = PlayerBehaviour.runningMode.Normal;	

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
	public void PowerUp(string p, int t){
		StartCoroutine (PowerUpp (p, t));
	}
	public void PowerDown(string p, int t){
		StartCoroutine (PowerDownn (p, t));
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


	public void DayTime () {
		var time = System.DateTime.Now;

		float result = time.Hour + (ExtensionMethods.Remap (time.Minute, 0, 60.0f, 0, 0.99f));
		float curTimeNormalizaed = ExtensionMethods.Remap (result, 0, 23.99f, 0, 1.0f);

        curHour = result;

		curTimeNormalizaed = Mathf.Round (curTimeNormalizaed * 100.0f) / 100.0f;	// Reduccion de decimales

		RenderSettings.ambientLight = transition.Evaluate (curTimeNormalizaed);
	}

}