/// @description Insert description here
// You can write your code in this editor
movement_control = "A and D to move, W to jump.  \nSpace for melee, and Left MB to shoot iron dart. \nThe dart will lift the player up to any gray tile or \nbring yellow enemy closer. \nIf enemy is dragged to player with darting iron, \nthe enemy will be destroyed instead of the player."

var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);

var cw = camera_get_view_width(view_camera[0]);

draw_text(cx+cw/2, cy + 25, string(movement_control));