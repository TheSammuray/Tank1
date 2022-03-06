/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var up, down, left, right, shoot;

initHP(1000);
damage = initDMG(10);

Stats =
{
	HP : currentHP,
	DMG : currentDMG,
};
up =	 keyboard_check(vk_up);
down =	 keyboard_check(vk_down);
left =	 keyboard_check(vk_left);
right =	 keyboard_check(vk_right);
shoot =	 keyboard_check(ord("Z"));

if (up && place_free(x,y-1)) {
	image_angle = 0;
	image_speed = 1;
	y -= 1;
	global.facing = 0;
}

if (down && place_free(x,y+1)) {
	image_angle = 180;
	image_speed = 1;
	y += 1;
	global.facing = 1;
}

if (left && place_free(x-1,y)) {
	image_angle = 90;
	image_speed = 1;
	x -= 1;
	global.facing = 2;
}

if (right && place_free(x+1,y)) {
	image_angle = -90;
	image_speed = 1;
	x += 1;
	global.facing = 3;
}

if(keyboard_check(vk_nokey)) {
	image_speed = 0;
}

if can_shoot == true {
	if shoot {
		instance_create_layer(x, y, "Instances", objBullet);
		can_shoot = false;
		alarm[0] = 15;
	}
}