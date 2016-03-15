using UnityEngine;
using System.Collections;

public class PlayerBehaviour : MonoBehaviour 
{
	/* Atributos */
	[Header("Movement Behaviour")]
	public float moveSpeed = 10f;
	public float jumpPower = 100f;
	public float playerGravity;					// Sacar la gravedad para usar el motor de fisicas
	public Transform selfTrans { get; private set; }

	[Header ("Role stuff")]
	public bool isAlive = true;
	public float stamina = 100f;


	[Header ("Score by distance")]
	public int scoreFreq;

	public bool canMove { get; private set; }

	float actualSpeed, actualPlayerGravity, nextPoint;
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
		if (moveSpeed == 0.0f) moveSpeed = 2.0f;
		if (playerGravity == 0.0f) playerGravity = 9.8f; 
		actualPlayerGravity = playerGravity;
		actualSpeed = moveSpeed;
		if (scoreFreq == 0) scoreFreq = 1;

		grounded = true;
		//Debug.Log ("Velocidad = " + actualSpeed + "\nGravedad = " + actualPlayerGravity);
	}
	
	void Update ()
	{
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

			moveSpeed += 0.033f * Time.deltaTime; 
			if (stamina > 0.1f) {
				stamina -= Time.deltaTime * 0.75f;
			}


			// Se desplaza en Z hacia adelante, y leemos la gravedad (para saltos o caidas que vayan a haber)
			//selfTrans.Translate (0, actualPlayerGravity, actualSpeed * Time.deltaTime);
            selfTrans.Translate (Vector3.forward * moveSpeed * Time.deltaTime, Space.World);

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
	void OnTriggerEnter2D (Collider2D other)
	{
		if (other.tag == "Default")
		{
		//	grounded = true;
		}
	}

	void OnTriggerExit2D (Collider2D other)
	{
		if (other.tag == "Default")
		{
		//	grounded = false;
		}
	}
}	