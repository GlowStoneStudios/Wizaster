using UnityEngine;
using System.Collections;

public class TrailBehaviour : MonoBehaviour
{
	/* Atributos */
	public static TrailBehaviour instance;

	SpriteRenderer sprtRend;
	bool grounded;
	Transform selfTrans;
	Animator selfAnim;
	Vector3 iniPos, iniRot;

	/* Applicacion al motor */
	void Awake () {
		instance = this;
	}

	void Start () {
		selfTrans = this.transform;
		sprtRend = GetComponent<SpriteRenderer> ();
		selfAnim = GetComponent<Animator> ();

		iniPos = selfTrans.position;
		iniRot = selfTrans.localEulerAngles;
	}

	void FixedUpdate () {
		RaycastHit hit;
		if (Physics.Raycast (selfTrans.position, Vector3.down, out hit, 1.0f)) {
			sprtRend.enabled = true;
		} else {
			sprtRend.enabled = false;
		}
	}

	public void DoDash () {
		selfAnim.SetTrigger ("dash");
	}
}