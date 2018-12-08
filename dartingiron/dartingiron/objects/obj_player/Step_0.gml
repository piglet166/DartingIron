/// @description Insert description here
// You can write your code in this editor
if(place_free(x, y+1)) gravity = 1;
else gravity = 0;

//movement
if(keyboard_check(ord("D"))){
	hspeed = 5;
	facing = PositionRelative.right;
	anim = Movement.right;
}
if(keyboard_check(ord("A"))) {
	hspeed = -5;
	facing = PositionRelative.left;
	anim = Movement.left;
}

if(keyboard_check(vk_nokey)){
	hspeed = 0;
	if(facing == PositionRelative.left) anim = Movement.idleLeft;
	else anim = Movement.idleRight;
}

if(keyboard_check_pressed(ord("W")) && !place_free(x, y+1)){
	vspeed = -20;
	if(facing == PositionRelative.left){ anim = Movement.jumpLeft;}
	else{ anim = Movement.jumpRight;}
}

//checking mouse pointer
if(mouse_check_button_pressed(mb_left)){
	mx = mouse_x;
	my = mouse_y;
	
	if(place_meeting(mx, my, obj_tile)){
		pulled = true;
	}
	
	if(place_meeting(mx, my, obj_enemy)){
		var victim = instance_place(mx, my, obj_enemy);
		pulling = true;
		
	}
}

if(pulled){
	
	gravity = 0.1;
	x += (mx - x) * 0.1;
	y += (my - y) * 0.1;
}

if (mouse_check_button_released(mb_left)){
	pulled = false;
	pulling = false;
}

if (hp <= 0) death = true;

if (death) instance_destroy();

switch (anim){
	case Movement.left:
		sprite_index = spr_ply_left_walk;
		image_index = 0;

		image_speed = 1;
		break;
	case Movement.right:
		sprite_index = spr_ply_right_walk;
		image_index = 0;

		image_speed = 1;
		break;
	case Movement.jumpLeft:
		break;
	case Movement.jumpRight:
		break;
	case Movement.idleLeft:
		//sprite_index = spr_ply_left_walk;
		image_index = 0;

		image_speed = 0;
		break;
	case Movement.idleRight:
		sprite_index = spr_ply_right_walk;
		image_index = 0;

		image_speed = 0;
		break;
}