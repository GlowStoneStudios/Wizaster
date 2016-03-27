using UnityEngine;
using System.Collections;

public class MovableObject : MonoBehaviour {

	public enum moveType{None, MoveXAxis,MoveYAxis,MoveZAxis }
    public moveType DragType;

    public enum randomPosType{None,X,Y,Z}
    public randomPosType RandomPosition;

    public Vector3 randomPosRange;
	public bool playerChild = false;

    public Vector3 MoveLimit, RotationLimitMin, RotationLimitMax;

    Vector3 startPos, startRot;
    Transform cached;
	Vector3 MoveOffset = new Vector3(-11f,-9f,9f);


//	Transform test;
	Vector3 minPos, maxPos;

	// Use this for initialization
    void Awake()
    {
        cached = this.transform;
    }
	void Start () {
        
	//	test = GameObject.Find ("TEST").transform;

        switch (RandomPosition)
        {
            case randomPosType.X:

                float rndX = Random.Range(cached.position.x - randomPosRange.x, cached.position.x + randomPosRange.x);
                cached.position = new Vector3(rndX, cached.position.y,cached.position.z);
                break;

            case randomPosType.Y:

                float rndY = Random.Range(cached.position.y - randomPosRange.y, cached.position.y+ randomPosRange.y);
                cached.position = new Vector3(cached.position.x, rndY,cached.position.z);
                break;

            case randomPosType.Z:

                float rndZ = Random.Range(cached.position.z - randomPosRange.z, cached.position.z + randomPosRange.z);
                cached.position = new Vector3(cached.position.x,cached.position.y, rndZ);
                break;
        }
        startRot = cached.localEulerAngles;
		startPos = cached.position;

		minPos = new Vector3 (startPos.x - MoveLimit.x,startPos.y - MoveLimit.y,startPos.z - MoveLimit.z);
		maxPos = new Vector3 (startPos.x + MoveLimit.x,startPos.y + MoveLimit.y,startPos.z + MoveLimit.z);
		//print (startPos + " // "+cached.name);
   
	}
	


    void OnMouseDrag()
    {
        Vector3 curScreenPoint = new Vector3(Input.mousePosition.x, Input.mousePosition.y, cached.position.y + 27f);
        Vector3 curPosition = Camera.main.ScreenToWorldPoint(curScreenPoint);

	//	test.position = curPosition;

        switch (DragType)
        {
		case moveType.MoveXAxis:

			Vector3 tempPosX = new Vector3 (curPosition.x + MoveOffset.x, startPos.y, startPos.z);

			if (MoveLimit.x != 0) 
			{
				tempPosX.x = Mathf.Clamp (tempPosX.x,minPos.x,maxPos.x);
			}

                cached.position = Vector3.Lerp(cached.position, tempPosX, Time.deltaTime * GameController.instance.ObjectsDragForce);
                break;

            case moveType.MoveYAxis:

			Vector3 tempPosY = new Vector3(startPos.x,curPosition.y +MoveOffset.y, startPos.z);

			if (MoveLimit.y != 0) 
			{
				tempPosY.y = Mathf.Clamp (tempPosY.y,minPos.y,maxPos.y);
			}

                cached.position = Vector3.Lerp(cached.position, tempPosY, Time.deltaTime * GameController.instance.ObjectsDragForce);
                break;

            case moveType.MoveZAxis:

			Vector3 tempPosZ = new Vector3(startPos.x, startPos.y, curPosition.z +MoveOffset.z);

			if (MoveLimit.z != 0) 
			{
				tempPosZ.x = Mathf.Clamp (tempPosZ.z,minPos.z,maxPos.z);
			}

                cached.position = Vector3.Lerp(cached.position, tempPosZ, Time.deltaTime * GameController.instance.ObjectsDragForce);
                break;


        }
    }


}
