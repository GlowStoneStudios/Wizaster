using UnityEngine;
using System.Collections;

public class PlayerBehaviour : MonoBehaviour 
{
	/* Atributos */
	[Header("Movement Behaviour")]
	public float normalSpeed = 10f; 
	public float slowSpeed,rushSpeed;
	[Space()]
	public float rushRate = 1.66f; 
	public float slowRate = 0.7f;

	public enum runningMode{Normal, Slowed, Rush}
	public runningMode runMode;

	public float jumpPower = 100f;
	public float playerGravity;					// Sacar la gravedad para usar el motor de fisicas
	public Transform selfTrans { get; private set; }

	[Header ("Role stuff")]
	public bool isAlive = true;
	public float stamina = 100f;


	[Header ("Score by distance")]
	public int scoreFreq;

	public bool canMove { get; private set; }

	public float actualSpeed;

	float actualPlayerGravity, nextPoint;
	bool grounded;

	public static PlayerBehaviour instance;

    [Header ("Info")]
    public string groundObjectTag;
    public Transform curParent;
    RaycastHit hit;

	/* Aplicacion al motor */
	void Awake ()
	{
		// Mem Cache
		instance = this;
	}

	void Start ()
	{
		// Mem Cache
		selfTrans = this.transform;

		// Prevension

		if (playerGravity == 0.0f) playerGravity = 9.8f; 
		actualPlayerGravity = playerGravity;
		actualSpeed = normalSpeed;
		if (scoreFreq == 0) scoreFreq = 1;

		grounded = true;
		//Debug.Log ("Velocidad = " + actualSpeed + "\nGravedad = " + actualPlayerGravity);
	}
	
	void Update ()
	{
		switch (runMode) 
		{

			case runningMode.Normal:
				actualSpeed = normalSpeed;
				break;

			case runningMode.Slowed:
				actualSpeed = slowSpeed;
				break;

			case runningMode.Rush:
				actualSpeed = rushSpeed;
				break;

		}

		rushSpeed = normalSpeed * rushRate;
		slowSpeed = normalSpeed * slowRate;
		
        if (Physics.Raycast(selfTrans.position, -Vector3.up, out hit, 0.5f))
        {
            groundObjectTag = hit.transform.tag;

            if (hit.transform.tag == "Platform")
            {
				if (hit.transform.GetComponent<MovableObject> ().playerChild) 
				{
					if (curParent != hit.transform) {
						selfTrans.SetParent (hit.transform);
						curParent = selfTrans.parent;
					}
				}
            }
            else
            {
                if (curParent != null)
                {
                    selfTrans.parent = null;
                    curParent = null;
                }
            }
        }
		// Cuando el personaje se pueda mover

		if (isAlive && GameController.instance.levelStarted) {
			canMove = true;
		} else {
			canMove = false;
		}
		if (canMove)
		{
			/* Condiciones de movimiento */

			// Gravedad

			normalSpeed += 0.033f * Time.deltaTime; 
			if (stamina > 0.1f) {
				stamina -= Time.deltaTime * 0.75f;
			}


			// Se desplaza en Z hacia adelante, y leemos la gravedad (para saltos o caidas que vayan a haber)
			//selfTrans.Translate (0, actualPlayerGravity, actualSpeed * Time.deltaTime);
			selfTrans.Translate (Vector3.forward * actualSpeed * Time.deltaTime, Space.World);

			/* Puntos por distancia */
			if (Time.timeSinceLevelLoad > nextPoint)
			{
				nextPoint = Time.timeSinceLevelLoad + 1;
				GameController.instance.mainScore += scoreFreq;
			}
		}
	}

	/* Metodos de la clase */
	public void PlayerGo ()
	{
		nextPoint = Time.timeSinceLevelLoad + 1;
		canMove = true;
	}

	/* Triggers */
	void OnTriggerEnter (Collider o)
	{
		if (o.tag == "Coin")
		{
			//GameController.instance.AddScore (GameController.instance.coinValue);
			o.gameObject.SetActive(false);
		}
	}

	void OnTriggerExit (Collider o)
	{
		if (o.tag == "Default")
		{
		//	grounded = false;
		}
	}
}	