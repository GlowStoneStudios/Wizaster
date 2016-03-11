using UnityEngine;
using System.Collections;

public class Enemy_endworld : MonoBehaviour {

	Transform cached;
	public float speed = 1f, speedRate = 0.5f;
	public float shakeRange = 6f;
	// Use this for initialization
	void Awake () {
		cached = this.transform;
	}
	void Start(){
		speed = PlayerBehaviour.instance.moveSpeed;
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
	}

	void OnTriggerEnter(Collider o){
		if (o.tag == "Player") 
		{
			PlayerBehaviour.instance.isAlive = false;
		}
	}
}
