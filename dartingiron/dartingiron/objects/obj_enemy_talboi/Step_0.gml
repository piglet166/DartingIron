/// @description Insert description here
// You can write your code in this editor
if(place_free(x, y+1)) gravity = 1;
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
	
	hspeed = 0;
	
	obj_player.gravity = 0.1;
	obj_player.x += (mx - obj_player.x) * 0.1;
	obj_player.y += (my - obj_player.y) * 0.1;

}

if (mouse_check_button_released(mb_left)){
	pulling = false;
	speed = norm_speed;
}

if (hp <= 0) death = true;
if (death) instance_destroy();