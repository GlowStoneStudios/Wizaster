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
		selfTrans = this.transform;
	}
}