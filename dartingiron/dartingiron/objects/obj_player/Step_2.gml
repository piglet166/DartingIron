/// @description Insert description here
// You can write your code in this editor
switch (anim){
	case Movement.left:
		sprite_index = spr_ply_left_walk;

		image_speed = 1;
		break;
	case Movement.right:
		sprite_index = spr_ply_right_walk;

		image_speed = 1;
		break;
	case Movement.jumpLeft:
		break;
	case Movement.jumpRight:
		break;
	case Movement.idleLeft:
		image_speed = 0;
		image_index = 0;
		break;
	case Movement.idleRight:
		image_index = 0;
		image_speed = 0;
		break;
}