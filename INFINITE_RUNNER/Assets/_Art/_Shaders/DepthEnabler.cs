using UnityEngine;
using System.Collections;

[ExecuteInEditMode]
public class DepthEnabler : MonoBehaviour {

	// Use this for initialization
	void Awake () {
		if (Camera.main.depthTextureMode != DepthTextureMode.Depth) 
		{
			Camera.main.depthTextureMode = DepthTextureMode.Depth;
		}
	}
}
