/// @description GUI/Vars/Menu setup
#macro SAVE_FILE "Save.sav"

//Overwrite old save
if(file_exists(SAVE_FILE)) file_delete(SAVE_FILE);

// Create new save
var file = file_text_open_write(SAVE_FILE);

for (i = 0; i < array_length_1d(oPlayer.skills) ; i++) {
	file_text_write_real(file, oPlayer.skills[i]);	
	file_text_writeln(file);
}
file_text_close(file);
