using UnityEngine;
using System.Collections;

public class CameraBehaviour : MonoBehaviour
{
	/* Atributos */
	[Header ("Movement")]
	public float speed;

	Transform selfTrans;
	Transform shaker;
	[Header ("Camera Shake")]
	public bool CameraShake;
	public Vector2 ShakeRange = new Vector2(0.2f,0.2f);
	public float ShakeSpeed = 2f, ShakeMagnitude = 1f;

	float minX, maxX, minY, maxY, Ydir = 1f,Xdir = 1f;
	float tempX = 0f, tempY = 0f;

	public static CameraBehaviour instance;

	/* Aplicacion al motor */
	void Awake ()
	{
		// Mem Cache
		instance = this;
		selfTrans = this.transform;
		shaker = Camera.main.transform.parent;

		// Prevension
		minX = shaker.localPosition.x - ShakeRange.x;
		maxX = shaker.localPosition.x + ShakeRange.x;

		minY = shaker.localPosition.y - ShakeRange.y;
		maxY = shaker.localPosition.y + ShakeRange.y;

		tempX = shaker.localPosition.x;
		tempY = shaker.localPosition.y;

		if (speed == 0.0f) speed = 2.0f;
	}

	void Update()
	{
		if (CameraShake) {
			if (shaker.localPosition.x > maxX) {
				Xdir = -1;
			}
			if (shaker.localPosition.x < minX) {
				Xdir = 1;
			}

			if (shaker.localPosition.y > maxY) {
				Ydir = -1;
			}
			if (shaker.localPosition.y < minY) {
				Ydir = 1;
			}

			tempX += Time.deltaTime * speed * Xdir;
			tempY += Time.deltaTime * speed * Ydir;

			Vector3 tempPos = new Vector3 (tempX, tempY, Random.Range (-1f, 1f));

			shaker.localPosition = Vector3.Lerp (shaker.localPosition, tempPos, Time.deltaTime * ShakeMagnitude);

		} 
		else 
		{
			shaker.localPosition = Vector3.Lerp (shaker.localPosition, Vector3.zero, Time.deltaTime);
		}
	}

	void LateUpdate ()
	{
		// Desplazamiento camara
		selfTrans.position = Vector3.Lerp (selfTrans.position, PlayerBehaviour.instance.selfTrans.position, speed * Time.deltaTime);
	}

	/* Metodos de la clase */
	public void DoShake (float duration)
	{
		// Duracion para el shake, y poder llamarlo desde distintos objetos.
		duration -= Time.deltaTime;
		if (duration > 0) {
			CameraShake = true;
		} else {
			CameraShake = false;
		}
	}
}