using UnityEngine;
using System.Collections;

public class PlayerBehaviour : MonoBehaviour 
{
	/* Atributos */
	[Header("Movement Behaviour")]
	public float speed;
	public float playerGravity;

	public bool canMove { get; private set; }

	float actualSpeed, actualPlayerGravity;
	bool grounded;
	Transform selfTrans;

	public static PlayerBehaviour instance;

	/* Aplicacion al motor */
	void Awake ()
	{
		instance = this;
	}

	void Start ()
	{
		// Mem Cache
		selfTrans = this.transform;

		// Prevension
		if (speed == 0.0f) speed = 2.0f;
		if (playerGravity == 0.0f) playerGravity = 9.8f; 
		actualPlayerGravity = playerGravity;
		actualSpeed = speed;

		grounded = true;
		//Debug.Log ("Velocidad = " + actualSpeed + "\nGravedad = " + actualPlayerGravity);
	}
	
	void Update ()
	{
		// Cuando el personaje se pueda mover
		if (canMove)
		{
			/* Condiciones de movimiento */
			// Gravedad
			if (grounded)
			{
				actualPlayerGravity = 0.0f;
			} 
			else 
			{
				actualPlayerGravity = playerGravity;
			}

			// Se desplaza en Z hacia adelante, y leemos la gravedad (para saltos o caidas que vayan a haber)
			selfTrans.Translate (0, actualPlayerGravity, actualSpeed * Time.deltaTime);
		}
	}

	/* Metodos de la clase */
	public void PlayerGo ()
	{
		canMove = true;
	}

	/* Triggers */
	void OnTriggerEnter2D (Collider2D other)
	{
		if (other.tag == "Default")
		{
			grounded = true;
		}
	}

	void OnTriggerExit2D (Collider2D other)
	{
		if (other.tag == "Default")
		{
			grounded = false;
		}
	}
}