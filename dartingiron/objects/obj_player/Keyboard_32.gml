/// @description Insert description here
// You can write your code in this editor

/*if(image_index >= 1) && (image_index <= 3){
	with(instance_create(x,y,obj_attack)){
		image_xscale = other.image_xscale;
		with(instace_place(x,y,par_enemy){
			if(hit == 0){
				hit = 1;
				vspeed = -3;
				hspeed = sign(x - other.x) * 4;
				image_xscale = sign(hspeed);
			}
		}
	}
}*/

var inst;
inst = instance_create_layer(x + 5, y-32, "Instances" ,obj_attack);
//instance_place(x,y,enemy);