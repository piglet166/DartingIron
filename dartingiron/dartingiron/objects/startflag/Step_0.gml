/// @description Insert description here
// You can write your code in this editor
var l14E0DB82_0 = false;
l14E0DB82_0 = instance_exists(obj_player);
if(!l14E0DB82_0)
{
	instance_create_layer(x, y, "Instances", obj_player);
}