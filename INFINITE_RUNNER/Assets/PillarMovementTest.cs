using UnityEngine;
using System.Collections;

public class PillarMovementTest : MonoBehaviour
{
	/* Atributos */
	public string triggerName;
	Transform selfTrans;
	Vector3 starterPos;
	Animator selfAnim;

	bool clicking;

	/* Aplicacion al motor */
	void Start () {
		selfTrans = this.transform;
		selfAnim = GetComponent<Animator> ();
	}

	void OnMouseDown () {
		starterPos = selfTrans.position;
		clicking = true;
	}

	void OnMouseUp () {
		if (selfTrans.position.y >= starterPos.y) {
			selfAnim.SetTrigger (triggerName);
		}
	}
	void OnMouseExit () {
		if (clicking) {
			if (selfTrans.position.y >= starterPos.y) {
				selfAnim.SetTrigger (triggerName);
			}
		}

		clicking = false;
	}
}