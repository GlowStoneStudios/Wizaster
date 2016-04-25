using UnityEngine;
using System.Collections;

public class ChunksHider : MonoBehaviour {

	public GameObject target;
	Transform cached;

	float timetoCheck = 0.33f;
	bool checkNow;
	// Use this for initialization
	void Awake () {
		cached = this.transform;
	}
	
	// Update is called once per frame
	void LateUpdate () {
		if (!checkNow) {
			checkNow = true;
			StartCoroutine(checkZpos());
		}
	}
	IEnumerator checkZpos(){

		if (cached.position.z < GameController.instance.anchorNegZ.position.z || cached.position.z > GameController.instance.anchorPosZ.position.z) {
			target.SetActive (false);
		} else {
			target.SetActive (true);
		}

		yield return new WaitForSeconds (timetoCheck);
		checkNow = false;
	}
}
