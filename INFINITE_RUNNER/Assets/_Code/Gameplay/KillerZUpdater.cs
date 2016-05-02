using UnityEngine;
using System.Collections;

[ExecuteInEditMode]
public class KillerZUpdater : MonoBehaviour {
	public bool updateGonzalo;
	// Use this for initialization
	void Awake () {
		updateGonzalo = true;
	}
	
	// Update is called once per frame
	void Update () {

		if (updateGonzalo) {
			updateGonzalo = false;
			Shader.SetGlobalFloat ("_KillerZ",transform.position.z);
		}
	}
}
