using UnityEngine;
using System.Collections;

public class MagnetPowerUp : MonoBehaviour
{
	/* Atributos */
	Transform playerTrans;
	Transform selfTrans;
	BoxCollider hB;

	/* Aplicacion al motor */
	void Start () {
		selfTrans = this.transform;
		playerTrans = PlayerBehaviour.instance.selfTrans;
		hB = GetComponent<BoxCollider> ();
	}

	void LateUpdate () {
		if (hB.enabled) {
			selfTrans.position = playerTrans.position;
		}
	}
}