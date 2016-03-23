using UnityEngine;
using System.Collections;

public class ItemSpawner : MonoBehaviour {

	public GameObject[] item;
	public float spawnRate = 1f;

	Transform[] spawners;

	// Use this for initialization
	void Awake(){

		for (int i = 0; i < transform.childCount; i++) 
		{
			spawners = new Transform[transform.childCount];
			spawners [i] = transform.GetChild (i);
			spawners[i].GetComponent<MeshRenderer> ().enabled = false;

			SpawnItem (i);
		}

		print (spawners.Length);

	}

	void SpawnItem (int i) 
	{
		//spawn here
	}

}
