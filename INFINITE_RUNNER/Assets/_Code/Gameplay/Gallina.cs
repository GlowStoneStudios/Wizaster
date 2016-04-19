using UnityEngine;
using System.Collections;

public class Gallina : MonoBehaviour {

    Animator anim;
    bool fired;

	// Use this for initialization
	void Awake () {
        anim = GetComponent<Animator>();
	}
	
	// Update is called once per frame
    void OnTriggerEnter (Collider col) {
        if (col.tag == "Player")
        {
            if (!fired)
            {
                fired = true;
                anim.SetTrigger("release");
            }
        }
	}
}
