using UnityEngine;
using System.Collections;

[ExecuteInEditMode]
public class ActionTrigger : MonoBehaviour {

	public enum actionType{None, Displacement, ActivatePhysics}
	public actionType Type;

	public Vector3 displacementTarget;
	Transform cached;
	bool actionDone;
	Rigidbody rigd;
    public bool SaveCurrentPos;
	public Vector3 minVec, maxVec;
	public float Multiplier = 1f;
	// Use this for initialization
	void Awake () {
		cached = this.transform;
		if(Type == actionType.ActivatePhysics){
			rigd = GetComponent<Rigidbody> ();
		}
	}
	
	// Update is called once per frame
	void Update () 
	{
        if (SaveCurrentPos)
        {
            SaveCurrentPos = false;
            displacementTarget = cached.localPosition;
        }
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
		if (Type == actionType.ActivatePhysics) {
			if (rigd.isKinematic) {
				rigd.isKinematic = false;
			}

			Vector3 tempVec = new Vector3 (
				Random.Range(minVec.x,maxVec.x),
				Random.Range(minVec.y,maxVec.y),
				Random.Range(minVec.z,maxVec.z)
			);
			rigd.AddForce (tempVec * Multiplier * 100f);
		}
	}
}
