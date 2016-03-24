using UnityEngine;
using System.Collections;

public class Credits : MonoBehaviour
{
	/* Atributos */
	[Header ("Credits Movement")]
	public float speed;
	public float minZ;

	[Header ("Fader")]
	public string sceneToLoad;
	public GUITexture black;

	Transform selfTrans;
	public bool creditsPassed { get; private set; }			// De lectura por si hay que hacer mas cosas tras los creditos.
	Vector4 faderColor;

	/* Aplicacion al motor */
	void Awake () {
		// Prevension
		if (black.enabled) black.enabled = false;
		faderColor = black.color;
		faderColor.w = 0;
		black.color = faderColor;
	}

	void Start () {
		// Cache
		selfTrans = this.transform;	
		// Prevension
		if (speed == 0.0f) {
			speed = -5.0f;
		}
	}

	void Update () {
		// Traslación creditos
		if (!creditsPassed) {
			if (selfTrans.position.z > minZ) {
				selfTrans.Translate (0, 0, speed * Time.deltaTime);
			} else {
				creditsPassed = true;
			}		
		}

		if (creditsPassed) {
			black.enabled = true;
			FadeOut (sceneToLoad);
		}
	}

	/* Metodos de la clase */
	void FadeOut (string levelToLoad) {
		/*
		 * - GUITexture c/ png negro
		 * - Color.a += time.time * ganancia de opcidad 
		 * - cuando este cerca o sobre el 90% cambiamos a 100 de una
		 * - estando en 100 detenemos la operacion y cambiamos la escena.
		 * 
		*/

		float opacityFreq = 0.1f;

		if (Time.timeSinceLevelLoad > opacityFreq) {
			opacityFreq = Time.timeSinceLevelLoad + 0.1f;
			faderColor.w ++;
			black.color = faderColor;
		}

	}

	/* Triggers */
	/*void OnTriggerEnter (Collider other) {
		PlayerBehaviour.instance.DoJump ();
	}*/
}