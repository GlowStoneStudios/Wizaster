using UnityEngine;
using System.Collections;

public class AudioManager : MonoBehaviour
{
	/* Atributos */
	[Header ("Tracks")]
	public AudioClip[] sfx;
	public AudioClip[] bgm;

	static public AudioManager instance;

	AudioSource audioPlayer;

	/* Aplicacion al motor */
	void Awake ()
	{
		instance = this;
		audioPlayer = GetComponent <AudioSource> ();
	}
	void Start(){
		RandomBgm ();
	}
	/* Metodos de la clase */
	public void PlayAudio (int i, float vol)
	{
		// i = clips , vol = volumen
		audioPlayer.PlayOneShot (sfx[i], vol);
	}

	void RandomBgm(){
		int rand = Random.Range (0, bgm.Length);
		audioPlayer.clip = bgm [rand];

		audioPlayer.Play ();
	}
}