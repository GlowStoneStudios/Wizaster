using UnityEngine;
using System.Collections;

public class TrailBehaviour : MonoBehaviour
{
	/* Atributos */
	SpriteRenderer sprtRend;
	bool grounded;
	Transform selfTrans;


	/* Applicacion al motor */
	void Start () {
		selfTrans = this.transform;
		sprtRend = GetComponent<SpriteRenderer> ();
	}

	void FixedUpdate () {
		RaycastHit hit;
		if (Physics.Raycast (selfTrans.position, Vector3.down, out hit, 0.25f)) {
			sprtRend.enabled = true;
		} else {
			sprtRend.enabled = false;
		}
	}
}