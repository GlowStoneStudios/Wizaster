using UnityEngine;
using System.Collections;

public class LookAtPlayer : MonoBehaviour
{
	/* Atributos */
	Transform selfTrans;
	[Header ("Look At")]
	public float offset = -5f;

	/* Aplicacion al motor */
	void Start () {
		selfTrans = this.transform;
	}

	void Update () {
		Vector3 target = new Vector3 (selfTrans.position.x - offset, Camera.main.transform.position.y, Camera.main.transform.position.z);
		selfTrans.LookAt (target);
	}
}