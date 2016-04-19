using UnityEngine;
using System.Collections;

public class Pollito : MonoBehaviour {

	Transform cached;
	public Transform gallina;

	public float speed = 3f;

	// Use this for initialization
	void Awake () {
		cached = this.transform;
	}
	
	// Update is called once per frame
	void LateUpdate () {
	
		if (gallina) {

			cached.LookAt (gallina.position);

			float dis = Vector3.Distance (cached.position, gallina.position);
			//print (dis);
			if ( dis > 2f) {

				cached.Translate (Vector3.forward * speed * Time.deltaTime);

			}
		}
	}
}
