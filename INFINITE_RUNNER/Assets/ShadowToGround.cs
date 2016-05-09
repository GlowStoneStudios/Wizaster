using UnityEngine;
using System.Collections;

public class ShadowToGround : MonoBehaviour
{
	/* Atributos */
	Transform selfTrans;

	/* Aplicacion al motor */
	void Start () {
		selfTrans = this.transform;
	}

	void FixedUpdate () {
		RaycastHit hit;
		float offset = 1.0f;
		if (Physics.Raycast (selfTrans.position, Vector3.down, out hit, 10.0f)) {
			Vector3 newPos = new Vector3 (hit.point.x, hit.point.y + offset, hit.point.z);
			selfTrans.position = newPos;
		}
	}
}