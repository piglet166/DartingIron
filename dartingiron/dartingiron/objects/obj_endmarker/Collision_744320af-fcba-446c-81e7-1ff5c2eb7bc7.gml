if(room != room_last)
{
	room_goto_next();
}

else
{

}

with(obj_player) instance_destroy();

draw_text_transformed(x + 0, y + 0, string("CONGRATULATION YOU WIN! ") + "", 1.5, 1.5, 0);