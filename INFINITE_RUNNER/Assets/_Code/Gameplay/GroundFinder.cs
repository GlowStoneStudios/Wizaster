using UnityEngine;
using System.Collections;

public class GroundFinder : MonoBehaviour
{
	/* Atributos */
	public int rayDist = 100;
	public float posOffset = 0.1f;
	public float rotOffset = 90.0f;
	Vector3 newYPos, groundNormal;
	Transform selfTrans;

	/* Aplicacion al motor */
	void Start () {
		selfTrans = this.transform;
	}

	void FixedUpdate () {
		RaycastHit hit;
		Ray ray = new Ray (PlayerBehaviour.instance.selfTrans.position, Vector3.down);
		if (Physics.Raycast (ray, out hit, rayDist)) {
			newYPos = hit.point;
			groundNormal = new Vector3 (hit.normal.x + rotOffset, hit.normal.y, hit.normal.z);
		}
	}

	void LateUpdate () {
		selfTrans.position = new Vector3 (selfTrans.position.x, newYPos.y + posOffset, selfTrans.position.z);
		selfTrans.rotation = Quaternion.Euler (groundNormal);
	}
}