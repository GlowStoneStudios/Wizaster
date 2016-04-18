using UnityEngine;
using System.Collections;

public class TrailBehaviour : MonoBehaviour
{
	/* Atributos */
	[Tooltip ("Trail Type va del 1 al 5.")]
	public float trailType;

	Animator trailAnim;
	Transform selfTrans;

	/* Aplicacion al motor */
	void Awake () {
		// Mem cache
		trailAnim = GetComponent<Animator> ();
		selfTrans = this.transform;
	}

	void Start () {
		// Prevension
		if (trailType > 5 || trailType < 1) {
			trailType = Random.Range (1,5);
			trailType = (int) trailType;
		}

		// Trail type setup.
		trailAnim.SetFloat ("trails", trailType);

		// Sprite align
		if (trailType == 2.0f || trailType == 3.0f) {
			selfTrans.position = new Vector3 (-0.082f, 0.15f, -0.776f);
			selfTrans.rotation = Quaternion.Euler (new Vector3 (90, 260, 0));
		} else {
			selfTrans.position = new Vector3 (0f, 0.15f, -0.7f);
			selfTrans.rotation = Quaternion.Euler (new Vector3 (90, 290, 0));
		}

		// Trail type setup.
		trailAnim.SetFloat ("trails", trailType);
	}
}