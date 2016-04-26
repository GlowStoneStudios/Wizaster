using UnityEngine;
using System.Collections;

public class PlaySound : MonoBehaviour {
	
	// Update is called once per frame
	public void PlaySoundFx(int i){
		AudioManager.instance.PlayAudio (i, 1f);
	}

}