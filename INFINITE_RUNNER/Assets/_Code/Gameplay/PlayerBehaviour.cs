using UnityEngine;
using System.Collections;

public class PlayerBehaviour : MonoBehaviour 
{
	/* Atributos */
	public static PlayerBehaviour instance;

	[Header ("Movement Behaviour")]
	public float normalSpeed = 10f; 
	public float slowSpeed, rushSpeed;
	Rigidbody selfRb;

	[Header ("Space")]
	public float rushRate = 1.66f; 
	public float slowRate = 0.7f;

	public enum runningMode{Normal, Slowed, Rush}
	public runningMode runMode;

	public Vector3 jumpPower = new Vector3 (0, 100.0f, 10.0f);
	public float playerGravity;										// Sacar la gravedad para usar el motor de fisicas
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

    [Header ("Info")]
    public string groundObjectTag;
    public Transform curParent;
    RaycastHit hit;

	[Header ("Animations")]
	public Animator animPlayer;

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

            /*
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
            */
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
	public void PlayerGo ()	{
		nextPoint = Time.timeSinceLevelLoad + 1;
		canMove = true;
	}

	public void DoJump () {
		selfRb.AddForce (jumpPower, ForceMode.Impulse);
	}
	/* Triggers */
	void OnTriggerEnter (Collider o)
	{
		if (o.tag == "Coin")
		{
			//GameController.instance.AddScore (GameController.instance.coinValue);
			o.gameObject.SetActive(false);
		}

        // Powers -----------------------------------------------------------------------------------------------
        if (o.tag == "Powers") {
            PowerUpsDowns script = o.gameObject.GetComponent<PowerUpsDowns> ();
			if (script.PowerUpType != PowerUpsDowns.powerUp.NONE) {
				// Si se escogio un power up ...
				GameController.instance.PowerUp (script.PowerUpType.ToString (), script.powerUpDuration);
			} else if (script.PowerDownType != PowerUpsDowns.powerDown.NONE) {
				// O un power down ...
				GameController.instance.PowerDown (script.PowerDownType.ToString(), script.powerDownDuration);
			} else {
				// Sino no pasa nada.
				return;
            }
        }

        // ------------------------------------------------------------------------------------------------------

	}

	void OnTriggerExit (Collider o)
	{
        if (o.tag == "Platform")
        {
            GameController.instance.AddScore (50);
        }
	}
}