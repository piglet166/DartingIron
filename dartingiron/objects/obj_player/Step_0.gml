/// @description Insert description here
// You can write your code in this editor
if(place_free(x, y+1)) gravity = 1;
else gravity = 0;

//gravity = 5;

if(keyboard_check(ord("D"))) hspeed = 5; //movement = Movement.right;
if(keyboard_check(ord("A"))) hspeed = -5; //movement = Movement.left;

if(keyboard_check(vk_nokey)) hspeed = 0; //movement = Movement.idle;

if(keyboard_check_pressed(ord("W")) && !place_free(x, y+1)){
	//movement = Movement.jump;
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

/*switch (movement){
	
	case Movement.idle:
		hspeed = 0;
		vspeed = 0;
		break;
		
	case Movement.left:
		//sprite_index = ???
		hspeed = -5;
		vspeed = 0;
		facing = PositionRelative.left;
		break;
		
	case Movement.right:
		//sprite_index = ???
		hspeed = 5;
		vspeed = 0;
		facing = PositionRelative.right;
		break;
		
	case Movement.jump:
		//sprite_index = ???
		vspeed = -20;
		
		if(keyboard_check(ord("D"))){ hspeed = 5; facing = PositionRelative.right;}
		if(keyboard_check(ord("A"))){ hspeed = -5; facing = PositionRelative.left;}
		break;
}*/

//if (health <= 0) death = true;

//if (death) instance_destroy();