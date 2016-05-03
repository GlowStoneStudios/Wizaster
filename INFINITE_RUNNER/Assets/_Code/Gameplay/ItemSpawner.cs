using UnityEngine;
using System.Collections;

public class ItemSpawner : MonoBehaviour {

	public GameObject[] item;
	 float spawnRate = 33f;

	Transform[] spawners;

	// Use this for initialization
	void Awake(){

		for (int i = 0; i < transform.childCount; i++) 
		{
			spawners = new Transform[transform.childCount];
			spawners [i] = transform.GetChild (i);
			spawners[i].GetComponent<MeshRenderer> ().enabled = false;

			float rnd = Random.value * 100f;

			if (rnd < spawnRate) {
				SpawnItem (i);
			}
		}

	//	print (spawners.Length);

	}

	void SpawnItem (int i) 
	{
		//spawn here
		GameObject objToSpawn =	Instantiate(item[Random.Range(0, item.Length)], spawners [i].transform.position,Quaternion.identity) as GameObject;
		objToSpawn.transform.SetParent (spawners [i].transform);
		//objToSpawn.transform.position = Vector3.zero;
	}

}
