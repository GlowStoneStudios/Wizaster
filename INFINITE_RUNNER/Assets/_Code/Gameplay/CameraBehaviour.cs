using UnityEngine;
using System.Collections;

public class CameraBehaviour : MonoBehaviour
{
	/* Atributos */
	[Header ("Movement")]
	public float speed;

	Transform selfTrans;

	/* Aplicacion al motor */
	void Start ()
	{
		// Prevension
		if (speed == 0.0f) speed = 2.0f;

		// Mem Cache
		selfTrans = this.transform;
	}

	void LateUpdate ()
	{
		// Desplazamiento camara
		selfTrans.position = Vector3.Lerp (selfTrans.position, PlayerBehaviour.instance.selfTrans.position, speed * Time.deltaTime);
	}
}