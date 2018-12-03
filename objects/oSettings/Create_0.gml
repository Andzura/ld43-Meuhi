/// @description 

// press blink
image_alpha = 0.2;
isComing = true;

x = room_width/2;
y = room_height - sprite_height;

// image background
pages[0] = sBinds;
pages[1] = sIceTuto;
pages[2] = sFireTuto;

currentPage = 0;
ypage = room_height/2;
