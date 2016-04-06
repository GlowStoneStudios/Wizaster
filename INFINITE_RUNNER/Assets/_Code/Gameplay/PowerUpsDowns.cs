using UnityEngine;
using System.Collections;

public class PowerUpsDowns : MonoBehaviour
{
	/* Atributos */
	// Power Ups
	public enum powerUp
	{
		NONE, GODMODE, SLOW, COINBOOST, MANA, IMAN, TELEPORT, RUSH
	}
	public powerUp PowerUpType;
	public int powerUpDuration;

	// Power Downs
	public enum powerDown
	{
		NONE, FASTBG, MANA, CAM, SLOW, NOCASH, INK
	}
	public powerDown PowerDownType;
	public int powerDownDuration;
}