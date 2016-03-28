using UnityEngine;
using System.Collections;

public class RotatingObject : MonoBehaviour {
	public Vector3 RotationAxis;
	public float curSpeed, TapRate = 0.66f;

	Transform cached;
	float startSpeed;
	// Use this for initialization
	void Awake () {
		cached = this.transform;
		startSpeed = curSpeed;
		RotationAxis = RotationAxis.normalized;
	}
	void Update(){
		cached.Rotate ((RotationAxis * curSpeed));

		if (curSpeed < startSpeed) {
			curSpeed += Time.deltaTime;
		}
	}
	// Update is called once per frame
	void OnMouseDown () {

		if (curSpeed > -15f) {

			curSpeed -= TapRate;

		} else {
			curSpeed = -15;
		}

	}
}
