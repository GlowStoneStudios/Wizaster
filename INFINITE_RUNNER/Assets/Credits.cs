using UnityEngine;
using System.Collections;

public class Credits : MonoBehaviour
{
	/* Atributos */
	[Header ("Movement")]
	public float speed;
	Transform selfTrans;

	/* Aplicacion al motor */
	void Start () {
		selfTrans = this.transform;	
		if (speed == 0.0f) {
			speed = -5.0f;
		}
	}

	void Update () {
		// Traslación creditos
		selfTrans.Translate (0, 0, speed * Time.deltaTime);
	}

	/* Metodos de la clase */
	/* Triggers */
	void OnTriggerEnter (Collider other) {
		PlayerBehaviour.instance.DoJump ();
	}
}