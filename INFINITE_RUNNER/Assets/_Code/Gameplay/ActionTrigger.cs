using UnityEngine;
using System.Collections;

public class ActionTrigger : MonoBehaviour {

	public enum actionType{None, Displacement}
	public actionType Type;

	public Vector3 displacementTarget;
	Transform cached;
	bool actionDone;

	// Use this for initialization
	void Awake () {
		cached = this.transform;
	}
	
	// Update is called once per frame
	void Update () {
	
		if (actionDone) {
			switch (Type) {

			case actionType.Displacement:
				cached.localPosition = Vector3.Lerp (cached.localPosition, displacementTarget, Time.deltaTime * GameController.instance.ObjectsDragForce);
				break;
			}
		}
	}

	void OnMouseDown(){
		if (!actionDone) {
			actionDone = true;
		}
	}
}
