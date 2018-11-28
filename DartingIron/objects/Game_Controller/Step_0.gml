/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 14E0DB82
/// @DnDArgument : "obj" "obj_player"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "165b082e-373e-4f00-9a36-1dfabd094874"
var l14E0DB82_0 = false;
l14E0DB82_0 = instance_exists(obj_player);
if(!l14E0DB82_0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 192559F8
	/// @DnDParent : 14E0DB82
	/// @DnDArgument : "xpos" "96"
	/// @DnDArgument : "ypos" "672"
	/// @DnDArgument : "objectid" "obj_player"
	/// @DnDSaveInfo : "objectid" "165b082e-373e-4f00-9a36-1dfabd094874"
	instance_create_layer(96, 672, "Instances", obj_player);
}