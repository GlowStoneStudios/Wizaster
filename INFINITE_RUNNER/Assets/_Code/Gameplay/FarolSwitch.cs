using UnityEngine;
using System.Collections;

public class FarolSwitch : MonoBehaviour {

    public GameObject lights;

	// Use this for initialization
	void Start () {
        doSwitching();
	}

    void doSwitching(){
        if (GameController.instance.curHour > 8f && GameController.instance.curHour < 20f)
        {
            lights.SetActive(false);
        }
        else
        {
            lights.SetActive(true);
        }
    }
}
