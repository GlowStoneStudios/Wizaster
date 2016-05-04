using UnityEngine;
using System.Collections;

public class RotatingObject : MonoBehaviour {
	public Vector3 RotationAxis;
	public float curSpeed, TapRate = 0.66f;
	public bool LimitValue; //si es true limita la velocidad a que no baje de 0.
	public float SpeedGainRate = 1f;
	Transform cached;
	float startSpeed;
	bool canRotate;
	// Use this for initialization
	void Awake () {
		cached = this.transform;
		startSpeed = curSpeed;
		RotationAxis = RotationAxis.normalized;
		canRotate = true;
	}
	void Update(){
		if (canRotate) {
			cached.Rotate ((RotationAxis * curSpeed * Time.deltaTime));

			if (curSpeed < startSpeed) {
				curSpeed += Time.deltaTime * SpeedGainRate;
			}
		}
	}
	void OnTriggerEnter(Collider col){
		if (col.tag == "Endworld") {
			canRotate = false;
		}
	}
	// Update is called once per frame
	void OnMouseDown () {
		if (LimitValue) 
		{
			if (curSpeed > 0f) 
			{
				curSpeed -= TapRate;
			} 
			else 
			{
				curSpeed = 0f;
			}
		} 
		else {

			if (curSpeed > -15f) 
			{
				curSpeed -= TapRate;

			} 
			else 
			{
				curSpeed = -15;
			}
		}
	}
}
