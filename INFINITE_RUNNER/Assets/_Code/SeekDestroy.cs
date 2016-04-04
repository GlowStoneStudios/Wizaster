using UnityEngine;
using System.Collections;

public class SeekDestroy : MonoBehaviour
{
	/* Atributos */
	[Header ("Movement")]
	public float speed = 2.5f;
	Transform selfTrans, playerTrans;

	/* Aplicacion al motor */
	void Start ()
	{
		selfTrans = this.transform;
		playerTrans = PlayerBehaviour.instance.gameObject.transform;
	}

	void Update ()
    {
        if (GameController.instance.levelStarted)
        {
            // Seguimiento a jugador
        //    Vector3 selfPos = new Vector3(selfTrans.position.x, 0, 0);
            Vector3 playerPos = new Vector3(playerTrans.position.x, selfTrans.position.y, selfTrans.position.z);
            selfTrans.position = Vector3.Lerp(selfTrans.position, playerPos, speed);
        }
    }


	/* Triggers */
	void OnTriggerEnter (Collider other){
		if (other.tag == "Player") {
			PlayerBehaviour.instance.Animations (false, "dies", false, 0.0f);
		}
	}
}