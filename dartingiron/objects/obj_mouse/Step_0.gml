/// @description Insert description here
// You can write your code in this editor
x = mouse_x;
y = mouse_y;

if(place_meeting(x, y, obj_tile)){
	image_index = 1;
}else if(place_meeting(x, y, obj_enemy)){
	image_index = 1;
}else{
	image_index = 0;
}