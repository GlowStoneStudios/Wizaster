using UnityEngine;
using System.Collections;

public class MovableObject : MonoBehaviour {

	public enum moveType{None, MoveXAxis,MoveYAxis,MoveZAxis }
    public moveType DragType;

    public enum randomPosType{None,X,Y,Z}
    public randomPosType RandomPosition;

    public Vector3 randomPosRange;
	public bool playerChild = false;

    public Vector3 MoveLimitMin,MoveLimitMax;

 

    Vector3 startPos, startRot;
    Transform cached;
	Vector3 MoveOffset = new Vector3(-11f,-1f,9f);


//	Transform test;
	Vector3 minPos, maxPos;

	// Use this for initialization
    void Awake()
    {
        cached = this.transform;
    }
	void Start () {
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

        minPos = new Vector3 (startPos.x - MoveLimitMin.x,startPos.y - MoveLimitMin.y,startPos.z - MoveLimitMin.z);
        maxPos = new Vector3 (startPos.x + MoveLimitMax.x,startPos.y + MoveLimitMax.y,startPos.z + MoveLimitMax.z);
	}
	


    void OnMouseDrag()
    {
        Transform testt = GameObject.Find("TEST").transform;
        Vector3 curPosition = new Vector3();
        switch (DragType)
        {
            case moveType.MoveXAxis:
                Plane planeX=new Plane(Vector3.up,new Vector3(0, 2, 0));
                Ray rayX=Camera.main.ScreenPointToRay(Input.mousePosition);
                float distanceX;
                if(planeX.Raycast(rayX, out distanceX)) {
                    curPosition=rayX.GetPoint(distanceX);
                    testt.position = curPosition;

                    Vector3 tempX = new Vector3(
                        Mathf.Clamp(curPosition.x,MoveLimitMin.x,MoveLimitMax.x),
                        startPos.y,
                        startPos.z);
                    cached.position = Vector3.Lerp(cached.position, tempX, Time.deltaTime * GameController.instance.ObjectsDragForce);
                }
                break;
            case moveType.MoveYAxis:
                Plane planeY=new Plane(Vector3.right,new Vector3(0, 2, 0));
                Ray rayY=Camera.main.ScreenPointToRay(Input.mousePosition);
                float distanceY;
                if(planeY.Raycast(rayY, out distanceY)) {
                    curPosition=rayY.GetPoint(distanceY);
                    testt.position = curPosition;

                    Vector3 tempY = new Vector3(
                        startPos.x,
                        Mathf.Clamp(curPosition.y,MoveLimitMin.y,MoveLimitMax.y)
                        ,startPos.z);
                    
                    cached.position = Vector3.Lerp(cached.position, tempY, Time.deltaTime * GameController.instance.ObjectsDragForce);
                }
                break;
            case moveType.MoveZAxis:
                Plane planeZ=new Plane(Vector3.right,new Vector3(0, 2, 0));
                Ray rayZ=Camera.main.ScreenPointToRay(Input.mousePosition);
                float distanceZ;
                if(planeZ.Raycast(rayZ, out distanceZ)) {
                    curPosition=rayZ.GetPoint(distanceZ);
                    testt.position = curPosition;

                    Vector3 tempZ = new Vector3(
                        startPos.x,
                        startPos.y,
                        Mathf.Clamp(curPosition.z,MoveLimitMin.z,MoveLimitMax.z)
                    );

                    cached.position = Vector3.Lerp(cached.position, tempZ, Time.deltaTime * GameController.instance.ObjectsDragForce);
                }
                break;
        }
    }

    void OnTriggerEnter(Collider col){
        if (playerChild)
        {
            if (col.tag == "Player")
            {
                col.transform.SetParent(cached);
            }
        }
    }

    void OnTriggerExit(Collider col){
        if (playerChild)
        {
            if (col.tag == "Player")
            {
                col.transform.parent = null;
            }
        }
    }

}
