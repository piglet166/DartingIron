/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 41C8356D
/// @DnDArgument : "expr" "x < room_height"
if(x < room_height)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6045CE63
	/// @DnDParent : 41C8356D
	instance_destroy();
}