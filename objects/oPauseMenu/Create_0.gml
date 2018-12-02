/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

ispaused = false;


menu[2] = "RESTART LEVEL";
menu[1] = "CONTINUE";
menu[0] = "MAIN MENU";

menu_itemheight =  font_get_size(fMenu);

menu_x = room_width/2;
menu_y = room_height/2 + 50;

menu_items = array_length_1d(menu);
menu_cursor = 1;
menu_committed =-1;