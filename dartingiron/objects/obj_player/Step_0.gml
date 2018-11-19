/// @description Insert description here
// You can write your code in this editor
if(place_free(x, y+1)) gravity = 1;
else gravity = 0;

if(keyboard_check(ord("D"))) hspeed = 5;
if(keyboard_check(ord("A"))) hspeed = -5;

if(keyboard_check(vk_nokey)) hspeed = 0;

if(keyboard_check_pressed(ord("W")) && !place_free(x, y+1)){
	vspeed = -20;
}

//checking mouse pointer
if(mouse_check_button_pressed(mb_left)){
	mx = mouse_x;
	my = mouse_y;
	
	if(place_meeting(mx, my, obj_tile)){
		pulled = true;
	}
	
	if(place_meeting(mx, my, obj_enemy)){
		var victim = other.id;
		pulling = true;
	}
}

if(pulled){
	
	gravity = 0.1;
	x += (mx - x) * 0.1;
	y += (my - y) * 0.1;
}

/*if(pulling){
	//with(victim){
		gravity = 0.1;
		victim.x += (mx - x) * 0.1;
		victim.y += (my - y) * 0.1;
	//}

}*/

if (mouse_check_button_released(mb_left)){
	pulled = false;
	pulling = false;
}