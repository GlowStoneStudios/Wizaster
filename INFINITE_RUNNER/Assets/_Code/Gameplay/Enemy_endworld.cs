﻿using UnityEngine;
using System.Collections;

public class Enemy_endworld : MonoBehaviour {

	Transform cached;
	public float speed = 1f, speedRate = 0.5f;
	public float shakeRange = 6f;


	bool checkDist;

	public GameObject gonzalo;
	public bool Hide;
	bool shadercalc;

	// Use this for initialization
	void Awake () {
		cached = this.transform;
	}
	void Start(){
		speed = PlayerBehaviour.instance.normalSpeed;
	}
	// Update is called once per frame
	void Update () {
		if (GameController.instance.levelStarted) 
		{
			cached.Translate (Vector3.forward * Time.deltaTime * speed);
			speed += Time.deltaTime * speedRate;
		}

	}
	void LateUpdate()
	{
		float tempDistance = PlayerBehaviour.instance.selfTrans.position.z - cached.position.z;
		tempDistance = Mathf.Abs (tempDistance);

		if (tempDistance < shakeRange) {
			CameraBehaviour.instance.CameraShake = true;
			CameraBehaviour.instance.ProximityShake (shakeRange, tempDistance, 25f);
		} else {
			CameraBehaviour.instance.CameraShake = false;
		}

		if (!shadercalc) {
			shadercalc = true;
			Shader.SetGlobalFloat ("_KillerZ",cached.position.z);
			StartCoroutine (staphCalc ());
		}

		if (Hide) {
			if (!checkDist) {
				checkDist = true;
				StartCoroutine (checkdistance ());
			}
		}
	}

	IEnumerator staphCalc(){
		yield return new WaitForSeconds (0.05f);
		shadercalc = false;
	}

	void OnTriggerEnter(Collider o){
		if (o.tag == "Player") 
		{
			PlayerBehaviour.instance.isAlive = false;
		}
	}

	IEnumerator checkdistance(){
		yield return new WaitForSeconds (0.5f);

		float dist = PlayerBehaviour.instance.selfTrans.position.z - cached.position.z;

		if (dist > 40f) {
			gonzalo.SetActive (false);
		} else {
			gonzalo.SetActive (true);
		}

		checkDist = false;
	}
}
