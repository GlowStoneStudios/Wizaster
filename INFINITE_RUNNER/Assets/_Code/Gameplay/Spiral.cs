using UnityEngine;
using System.Collections;

public class Spiral : MonoBehaviour {

	public bool isTouching;
	public float direction = -1f;
	public float speed = 4f;
	public Vector2 limits = new Vector2(-8f,5f);

	public float SpeedGainRate = 0.66f;

	Transform cached;
	float startSpeed;
	// Use this for initialization


	void Awake () {
		cached = this.transform;
		startSpeed = speed;
	
	}
	void Update(){
		cached.Rotate ((Vector3.forward * direction * speed));

		if (speed < startSpeed) {
			speed += Time.deltaTime * SpeedGainRate;
		}
	}
	void OnMouseDrag(){

		Vector3 curPosition = new Vector3();

		Plane planeX=new Plane(Vector3.right,new Vector3(0, 2, 0));
		Ray rayX=Camera.main.ScreenPointToRay(Input.mousePosition);
		float distanceX;

		if(planeX.Raycast(rayX, out distanceX)) {
			curPosition=rayX.GetPoint(distanceX);

			float clampedPos = Mathf.Clamp (curPosition.y, limits.x, limits.y);
			float curAngle = ExtensionMethods.Remap (clampedPos, limits.x, limits.y, 0f, 360f);

			Vector3 tempVec = new Vector3 (0,0,curAngle);
			cached.localEulerAngles = Vector3.Lerp (cached.localEulerAngles,tempVec, Time.deltaTime * GameController.instance.ObjectsDragForce);
		}
	}
}
