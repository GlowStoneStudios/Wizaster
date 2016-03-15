using UnityEngine;
using System.Collections;

public class MovableObject : MonoBehaviour {

	public enum moveType{None, MoveXAxis,MoveYAxis,MoveZAxis }
    public moveType DragType;

    public enum randomPosType{None,X,Y,Z}
    public randomPosType RandomPosition;

	public enum rotType{None,X,Y,Z}
	public rotType RotationType;

    public Vector3 randomPosRange;
	public bool playerChild = false;

    Vector3 startPos;
    Transform cached;
    Vector3 Offset = new Vector3(-24f,-22f,24f);
	Vector3 rotationOffset = new Vector3(1f,1f,25f);

	// Use this for initialization
    void Awake()
    {
        cached = this.transform;
    }
	void Start () {
	
        startPos = cached.position;

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
   
	}
	
	// Update is called once per frame
	void LateUpdate () {
		if (RotationType == rotType.Z) 
		{
			cached.localEulerAngles = new Vector3 (cached.localEulerAngles.x,90f,0);
		}
	}

    void OnMouseDrag()
    {
        Vector3 curScreenPoint = new Vector3(Input.mousePosition.x, Input.mousePosition.y, cached.position.y);
        Vector3 curPosition = Camera.main.ScreenToWorldPoint(curScreenPoint);

        switch (DragType)
        {
            case moveType.MoveXAxis:

                Vector3 tempPosX = new Vector3(curPosition.x +Offset.x, startPos.y, startPos.z);
                cached.position = Vector3.Lerp(cached.position, tempPosX, Time.deltaTime * GameController.instance.ObjectsDragForce);
                break;

            case moveType.MoveYAxis:

                Vector3 tempPosY = new Vector3(startPos.x,curPosition.y +Offset.y, startPos.z);
                cached.position = Vector3.Lerp(cached.position, tempPosY, Time.deltaTime * GameController.instance.ObjectsDragForce);
                break;

            case moveType.MoveZAxis:

                Vector3 tempPosZ = new Vector3(startPos.x, startPos.y, curPosition.z +Offset.z);
                cached.position = Vector3.Lerp(cached.position, tempPosZ, Time.deltaTime * GameController.instance.ObjectsDragForce);
                break;
        }

		switch (RotationType)
		{
		case rotType.Z:

			Quaternion newRotation = Quaternion.LookRotation (curPosition, Vector3.forward);

			cached.rotation = Quaternion.Slerp (cached.rotation, newRotation, Time.deltaTime * GameController.instance.ObjectsDragForce);

			break;
		}

    }
}
