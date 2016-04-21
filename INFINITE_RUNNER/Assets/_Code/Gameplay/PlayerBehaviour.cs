using UnityEngine;
using System.Collections;

public class PlayerBehaviour : MonoBehaviour 
{
	/* Atributos */
	public static PlayerBehaviour instance;

	[Header ("Movement Behaviour")]
	public float normalSpeed = 10f; 
	public float slowSpeed, rushSpeed;
	public Vector3 dashForce;
	Rigidbody selfRb;

	[Header ("Space")]
	public float rushRate = 1.66f; 
	public float slowRate = 0.7f;

	public enum runningMode{ Normal, Slowed, Rush }
	public runningMode runMode;

	public Vector3 jumpPower = new Vector3 (0, 100.0f, 10.0f);
	public float playerGravity;										// Sacar la gravedad para usar el motor de fisicas
	public Transform selfTrans { get; private set; }

	[Header ("Role stuff")]
	public bool isAlive = true;
	public bool RushByPowerUp = false;
	public float staminaGainRate = 1f, staminaConsumeRate = 1f;
	public float stamina = 100f;
	public bool damaged;

	public string curPowerUp = "";

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
		selfRb = GetComponent<Rigidbody> ();

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

		if (stamina < 11f && !RushByPowerUp) {
			runMode = runningMode.Slowed;
		}

        if (Physics.Raycast(selfTrans.position, -Vector3.up, out hit, 0.5f))
        {
            groundObjectTag = hit.transform.tag;
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
				stamina -= Time.deltaTime * 0.75f * staminaConsumeRate;
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

	/* Animations */
	public void Animations (bool isTrigger, string animName, bool isPlaying, float slipType) {
		 // Modo de uso:
		 // Primero se le indica a la funcion si la animacion que se gatillara sera trigger o no.
		 // En el string animName, deben ir los parametros del Animator Controller que cambian las animaciones.
		 // En el caso de que sean parametros boleanos, se le asigna el valor respectivo al bool isPlaying
		 // Si es un parametro de trigger, isPlaying se deja falso.
		if (isTrigger) {
			animPlayer.SetTrigger (animName);
		} else {
			if (animName == "slip") {
				animPlayer.SetFloat ("slipType", slipType);
			}
			animPlayer.SetBool (animName, isPlaying);
		}
			
		// La idea es gatillar las animaciones externamente ya que pareciera ser mas facil detectar cuando ingresarlas Oó..............
	}

	void OnMouseDown () {
		if (canMove) {
			addSpeedForce ();
		}
	}

	void addSpeedForce(){
		if (stamina > 10.0f) {
			selfRb.AddForce (dashForce, ForceMode.Force);
			stamina -= staminaConsumeRate;
			//EFECTO AKI
		}
	}
	/* Triggers */
	void OnTriggerEnter (Collider o)
	{
		if (o.tag == "Coin")
		{
			GameController.instance.AddScore (GameController.instance.coinValue, o.transform.position);

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

			o.gameObject.SetActive(false);
			//EFECTO AKI
        }

        // ------------------------------------------------------------------------------------------------------

		// Muerte -----------------------------------------------------------------------------------------------
		if (o.tag == "Killer" || o.tag == "Endworld") {
			if (!isAlive) {
				return;
			} 
			else 
			{
				isAlive = false;
				canMove = false;
				selfRb.isKinematic = true;
				animPlayer.SetTrigger ("dies");
				AudioManager.instance.PlayAudio (0, 1.0f);
			}
		}

		if (o.tag == "Burn") {
			DoBurn ();
		}
	}

	void OnTriggerStay (Collider other) {
		// Muerte -----------------------------------------------------------------------------------------------
		if (other.tag == "Killer" || other.tag == "Endworld") {
			if (!isAlive) {
				return;
			} else {
				isAlive = false;
				canMove = false;
				selfRb.isKinematic = true;
				animPlayer.SetTrigger ("dies");
				AudioManager.instance.PlayAudio (0, 1.0f);
			}
		}
	
	}

	void OnTriggerExit (Collider o)
	{
        if (o.tag == "Platform")
        {

			GameController.instance.AddScore (50, selfTrans.position);
        }
	}
	void OnCollisionEnter(Collision collision)
	{
		if (collision.collider.tag == "Goat" || collision.collider.tag == "Chicken") {
			if (!damaged) {
				damaged = true;
				StartCoroutine (damageReset ());
				DoDamage ();
			}
		}
	}

	void DoDamage(){
		
		selfRb.AddForce (jumpPower * 0.5f);	
		stamina -= 5f;
		animPlayer.SetTrigger ("hurt");
		AudioManager.instance.PlayAudio (0,1f);
		//spawn Smoke
	}
	void DoBurn()
	{
		selfRb.AddForce (jumpPower);	
		//AudioManager.instance.PlayAudio (1,1f);
	//	smoke.SetActive (true);
	//	StartCoroutine(cancelSmoke(smoke));
		stamina -= 5f;
		AudioManager.instance.PlayAudio (0,1f);
		GameController.instance.AddScore (50, selfTrans.position);
	}
	IEnumerator damageReset(){
		yield return new WaitForSeconds (0.66f);
		damaged = false;
	}
	IEnumerator cancelSmoke(GameObject smoke){
		yield return new WaitForSeconds (1);
		smoke.SetActive (false);
	}
} 