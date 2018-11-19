/// @description Insert description here
// You can write your code in this editor
if(place_free(x, y+1)) gravity = 1;
else gravity = 0;

//checking mouse pointer
if(mouse_check_button_pressed(mb_left)){
	mx = mouse_x;
	my = mouse_y;
	
	if(place_meeting(mx, my, self)){
		pulling = true;
	}
}

if(pulling){

	gravity = 0.1;
	direction = point_direction(x,y, obj_player.x, obj_player.y);
	speed = 4;

}

if (mouse_check_button_released(mb_left)){
	pulling = false;
}