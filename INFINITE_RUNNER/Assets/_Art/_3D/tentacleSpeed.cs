using UnityEngine;
using System.Collections;

public class tentacleSpeed : MonoBehaviour {
	public float animSpeed = 1f;
	// Use this for initialization
	void Start(){
		GetComponent<Animator> ().SetFloat ("speed", animSpeed);
	}
	void OnEnable () {
		GetComponent<Animator> ().SetFloat ("speed", animSpeed);
	}
}
