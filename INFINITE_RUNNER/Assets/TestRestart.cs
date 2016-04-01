using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class TestRestart : MonoBehaviour {

	public Image button;
	public GameObject text;
	bool canRestart;

	void Update () {
		if (!PlayerBehaviour.instance.isAlive) {
			button.enabled = true;
			text.SetActive (true);
			canRestart = true;
		}
	}

	public void RestartLevel () {
		if (canRestart)
			UnityEngine.SceneManagement.SceneManager.LoadScene ("gameplay");
	}
}
