using UnityEngine;
using System.Collections;

public class Rotator : MonoBehaviour {

	public float Speed;
	public Vector3 rotationAngle;

	Transform cached;
	// Use this for initialization

	void Awake(){
		cached = this.transform;
		rotationAngle = rotationAngle.normalized;
	}
	// Update is called once per frame
	void Update () {
		cached.Rotate (rotationAngle * Speed * Time.deltaTime);
	}
}
