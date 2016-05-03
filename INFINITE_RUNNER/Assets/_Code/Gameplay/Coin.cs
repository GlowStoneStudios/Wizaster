using UnityEngine;
using System.Collections;

public class Coin : MonoBehaviour {

	public enum coinType
	{
		Coin, Bag, Crystal
	}
	public coinType type;
	Transform cached;

	void Awake(){
		cached = this.transform;
	}
	// Use this for initialization
	void OnTriggerEnter (Collider col) {

		if (col.tag == "Player") {
			
			switch (type) {
			case coinType.Coin:
				//AudioManager.instance.PlayAudio (3, 1f);
				GameController.instance.AddScore(GameController.instance.coinValue, cached.position);
				break;

			case coinType.Bag:
				//AudioManager.instance.PlayAudio (3, 1f);
				GameController.instance.AddScore(GameController.instance.coinValue * 3, cached.position);
				break;

			case coinType.Crystal:
				//AudioManager.instance.PlayAudio (3, 1f);
				GameController.instance.AddScore (GameController.instance.coinValue / 2, cached.position);
				if (PlayerBehaviour.instance.stamina < 100f) {
					PlayerBehaviour.instance.stamina += 15f;
				}
				break;
			}

			gameObject.SetActive (false);
		}
	}
}
