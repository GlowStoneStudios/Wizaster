using UnityEngine;
using System.Collections;

public class CreditsPlayer : MonoBehaviour
{
	/* Atributos */
	[Header ("Movement")]
	public float speed;
	public float jumpForce;

	bool obstacle, canJump;
	Transform selfTrans;
	Rigidbody selfRb;

	public float rayDist;

	[Header("Animation")]
	public Animator playerAnim;

	/* Aplicacion al motor */
	void Start () {
		selfTrans = this.transform;

		selfRb = GetComponent<Rigidbody> ();

		if (!canJump)
			canJump = true;

		if (speed == 0.0f) {
			speed = 2.0f;
		}

		if (rayDist == 0.0f) {
			rayDist = 2.25f;
		}

		if (jumpForce == 0.0f) {
			jumpForce = 200.0f;
		}
	}
		
	void FixedUpdate ()
	{
		RaycastHit hit;
		/* Jump */
		Vector3 rayOrigin = new Vector3 (selfTrans.position.x, selfTrans.position.y + 0.1f, selfTrans.position.z);
		if (Physics.Raycast (rayOrigin, Vector3.forward, out hit, rayDist)) {
			if (hit.transform.tag == "Respawn") {
				DoJump ();
			}
		}

		/* Landing */
		if (Physics.Raycast (selfTrans.position, Vector3.down, out hit, 0.1f)) {
			if (hit.transform.tag == "Ground") {
				canJump = true;
				playerAnim.SetBool ("onAir", false);
				//Debug.Log (canJump);
			}
		}
	}

	/* Metodos de la clase */
	public void DoJump () {
		if (canJump) {
			canJump = false;
			playerAnim.SetBool ("onAir", true);
			selfRb.AddForce ( Vector3.up * jumpForce, ForceMode.Force);
		}
	}
}