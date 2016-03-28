using UnityEngine;
using System.Collections;

public class TapObject : MonoBehaviour {

    public enum tapMode{None, Hold, OneTap, MultiTap}
    [Header("Behaviour Modes")]
    public tapMode TapMode;

    public enum paramMode{None, Translation, Rotation, Scale, Speed}
    public paramMode ParameterMode;

    [Header("Values")]
    public Vector3 FinalValue;
    public float minSpeed, maxSpeed;

    [Header("Tap Settings")]
    public int MultiTapCount = 3;
    public AnimationCurve MultiTapProgression;

    [Header("Clamp Values")]
    public Vector3 rotationMultiplier= new Vector3(1, 1, 1);

    Vector3 ValueMin, NextTransform;
    float startSpeed, curValue, valueToCheck;
    Transform cached;
    bool DoTransform,ActionCompleted;
    int curTapCount;

	// Use this for initialization
    void Awake(){
        cached = this.transform;
    }
	void Start () {
        switch (ParameterMode)
        {
            case paramMode.Rotation:
                ValueMin = cached.localEulerAngles;
                break;
            case paramMode.Translation:
                ValueMin = cached.position;
                break;
            case paramMode.Scale:
                ValueMin = cached.localScale;
                break;
            case paramMode.Speed:
                startSpeed = minSpeed;
                break;
        
        }

        curValue = Mathf.Round((1f / MultiTapCount) * 100f) / 100f;
    
    }
	// Update is called once per frame
    void OnMouseDown() {
        
        switch (TapMode)
        {
            case tapMode.MultiTap:
                
                if (curTapCount < MultiTapCount)
                {
                    DoTransform = true;
                   

                    valueToCheck += curValue;

                    float tempProgressionValue = MultiTapProgression.Evaluate(valueToCheck);
                   // print(tempProgressionValue);
                    switch (ParameterMode)
                    {
                        case paramMode.Rotation:
                            NextTransform = new Vector3(
                                ExtensionMethods.Remap(tempProgressionValue, 0f, 1f, ValueMin.x, FinalValue.x),
                                ExtensionMethods.Remap(tempProgressionValue, 0f, 1f, ValueMin.y, FinalValue.y),
                                ExtensionMethods.Remap(tempProgressionValue, 0f, 1f, ValueMin.z, FinalValue.z)                
                            );
                         //   print(NextTransform);
                            break;
                    }

                    curTapCount += 1;
                }
                else
                {
                    ActionCompleted = true;
                }
                break;
        }
    }
    void Update(){
     //   print(NextTransform);
        if (DoTransform)
        {
            switch (ParameterMode)
            {
                case paramMode.Rotation:
              
                    Quaternion temp = Quaternion.Euler(NextTransform);
                    cached.rotation = Quaternion.Slerp(cached.rotation, temp, Time.deltaTime * GameController.instance.ObjectsDragForce);
                    cached.localEulerAngles = new Vector3(
                        cached.localEulerAngles.x * rotationMultiplier.x,
                        cached.localEulerAngles.y * rotationMultiplier.y,
                        cached.localEulerAngles.z * rotationMultiplier.z
                    );
                    break;
            }
        }
    }
}
