using UnityEngine;
using System.Collections;

public class CameraBehaviour : MonoBehaviour
{
	/* Atributos */
	[Header ("Movement")]
	public float followSpeed = 6f;

	Transform selfTrans;
	Transform shaker;
	[Header ("Camera Shake")]
	public bool CameraShake;
	public Vector2 ShakeRange = new Vector2(0.2f,0.2f);
	public float ShakeSpeed = 20f; //magnitud del temblor cuando el fin del mundo esta a 0,0,0 del personaje



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

		if (followSpeed == 0.0f) followSpeed = 2.0f;
	}

	void Update()
	{

		if (followSpeed < 6f) {
			followSpeed += Time.deltaTime * 0.333f;
		}
		// Shake
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

			tempX += Time.deltaTime * ShakeSpeed * Xdir;
			tempY += Time.deltaTime * ShakeSpeed * Ydir;

			Vector3 tempPos = new Vector3 (tempX, tempY, Random.Range (-1f, 1f));

			shaker.localPosition = Vector3.Lerp (shaker.localPosition, tempPos, Time.deltaTime * ShakeSpeed );
		 
		} 
		else 
		{
			shaker.localPosition = Vector3.Lerp (shaker.localPosition, Vector3.zero, Time.deltaTime);
		}
	}

	void LateUpdate ()
	{
		// Desplazamiento camara
		if (PlayerBehaviour.instance != null) selfTrans.position = Vector3.Lerp (selfTrans.position, PlayerBehaviour.instance.selfTrans.position, followSpeed * Time.deltaTime);
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

	public void ProximityShake(float farRange, float curPos, float maxShakeIntensity)
	{
		float speedForce = ExtensionMethods.Remap (curPos,0f,farRange,0f,maxShakeIntensity);
		ShakeSpeed = (maxShakeIntensity - speedForce);
		//print (ShakeSpeed);
	}
}