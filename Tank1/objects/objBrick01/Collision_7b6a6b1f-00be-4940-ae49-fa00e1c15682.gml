/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

currentHP -= objPlayer.currentDMG;
if (currentHP <= 0) {
	var rand = random(1);
	if rand == 1
	{
		instance_change(objPowerUp, true);
	}
	else if rand == 2
	{
		instance_change(objBSpeedUp, true);
	}
	else if rand == 3
	{
		instance_change(objTSpeedUp, true);
	}
	else if rand == 4
	{
		instance_change(objRepair, true);
	}
	else instance_destroy()
}
else if (currentHP <= 25) {
	image_index = 3;
}
else if (currentHP <= 50) {
	image_index = 2;
}
else if (currentHP <= 75) {
	image_index = 1;
}
instance_destroy(other);
