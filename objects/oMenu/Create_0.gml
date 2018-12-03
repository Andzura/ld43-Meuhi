/// @description position

// image du titre
gui_width = room_width;
gui_height = room_height;
gui_margin = 40;


// title
image_alpha = 0;
x = gui_width/2;
y = gui_height/3.5;

// menu
menu_x = x
menu_y = x + gui_margin;

menu_font = fMenu;
menu_itemheight =  font_get_size(fMenu);

menu[3] = "CONTINUE";
menu[2] = "NEW GAME";
menu[1] = "HOW TO PLAY";
menu[0] = "QUIT";

menu_items = array_length_1d(menu);
menu_cursor = 3;
menu_committed =-1;

if(!instance_exists(oPlayer))
	instance_create_layer(30, 30, "Player", oPlayer);
	
oPlayer.visible = false;
