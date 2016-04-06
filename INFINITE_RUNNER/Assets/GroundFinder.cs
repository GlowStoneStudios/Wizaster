using UnityEngine;
using System.Collections;

public class GroundFinder : MonoBehaviour
{
	/* Atributos */
	public int rayDist;
	public float offset;
	Transform selfTrans;

	/* Aplicacion al motor */
	void Start () {
		selfTrans = this.transform;
	}

	void FixedUpdate () {
		RaycastHit hit;
		if (Physics.Raycast (selfTrans.position, Vector3.down, rayDist, out hit)) {
			float newYPos = hit.point + offset;
		}
	}

	void LateUpdate () {
		selfTrans = (selfTrans.position.x, selfTrans.position.y - newYPos, selfTrans.position.z);
	}
}