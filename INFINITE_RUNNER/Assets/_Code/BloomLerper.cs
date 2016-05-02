using UnityEngine;
using System.Collections;

public class BloomLerper : MonoBehaviour {

	UnityStandardAssets.ImageEffects.Bloom bloom;

	// Use this for initialization
	void Awake () {
		bloom = GetComponent<UnityStandardAssets.ImageEffects.Bloom> ();
	}
	
	// Update is called once per frame
	void LateUpdate () {
		if (!PlayerBehaviour.instance.isAlive) {
			bloom.bloomThreshold = Mathf.Lerp (bloom.bloomThreshold, 0.26f, Time.deltaTime);
		}
	}
}
