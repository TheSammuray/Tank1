/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var rand = random(10);
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