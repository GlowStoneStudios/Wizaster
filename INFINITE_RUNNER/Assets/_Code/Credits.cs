using UnityEngine;
using System.Collections;

public class Credits : MonoBehaviour
{
    /* Atributos */
    [Header ("Credits Movement")]
    public float speed;
    public float minZ;

    [Header ("Fader")]
    public string sceneToLoad;
    public GUITexture black;
    public float faderSpeed;

    Transform selfTrans;
    public bool creditsPassed { get; private set; }         // De lectura por si hay que hacer mas cosas tras los creditos.
    Vector4 faderColor;

    /* Aplicacion al motor */
    void Awake () {
        // Prevension
        if (black.enabled) black.enabled = false;
        faderColor = black.color;
        faderColor.w = 0;
        black.color = faderColor;
    }

    void Start () {
        // Cache
        selfTrans = this.transform; 
        // Prevension
        if (speed == 0.0f) {
            speed = -5.0f;
        }

        if (faderSpeed == 0.0f) {
            faderSpeed = 0.5f;
        }
    }

    void Update () {
        // Traslación creditos
        if (!creditsPassed) {
            if (selfTrans.position.z > minZ) {
                selfTrans.Translate (0, 0, speed * Time.deltaTime);
            } else {
                creditsPassed = true;
            }       
        }

        if (creditsPassed) {
            black.enabled = true;
            FadeOut (sceneToLoad);
        }
    }

    /* Metodos de la clase */
    void FadeOut (string levelToLoad) {
        // Transicion
        black.color = Color.Lerp (black.color, Color.black, faderSpeed * Time.deltaTime);
        // Cambio de escena
        if (black.color.a == 1.0f) {
            UnityEngine.SceneManagement.SceneManager.LoadScene (levelToLoad);
        }
    }

    /* Triggers */
    void OnTriggerEnter (Collider other) {
        PlayerBehaviour.instance.DoJump ();
    }
}