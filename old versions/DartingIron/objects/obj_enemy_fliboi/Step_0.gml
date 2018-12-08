/// @description Insert description here
// You can write your code in this editor
if(place_free(x, y+1)) gravity = 0;
else gravity = 0;

//checking mouse pointer
if(mouse_check_button_pressed(mb_left)){
	mx = mouse_x;
	my = mouse_y;
	
	if(place_meeting(x, y, obj_mouse)){
		pulling = true;
	}
}

if(pulling){
	
	gravity = .1;
	x += (obj_player.x - x) * 0.1;
	y += (obj_player.y - y) * 0.1;
	if(obj_player.x < x){
		hspeed = -12;
	}
	if(obj_player.x > x){
		hspeed = 12;
	}

}

if (mouse_check_button_released(mb_left)){
	pulling = false;
	speed = norm_speed;
}

if (hp <= 0) death = true;
if (death) instance_destroy();