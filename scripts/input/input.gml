function input(){
	
	
	xIn = 0; xClick = 0;
	if(keyboard_check(ord("A")) || keyboard_check(vk_left)){ xIn --; }
	if(keyboard_check(ord("D")) || keyboard_check(vk_right)){ xIn ++; }
	if(xIn == -1 && ( keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left)) ){ xClick --; }
	if(xIn == 1 && ( keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right)) ){ xClick ++; }
	
	yIn = 0; yClick = 0;
	if(keyboard_check(ord("W")) || keyboard_check(vk_up)){ yIn --; }
	if(keyboard_check(ord("S")) || keyboard_check(vk_down)){ yIn ++; }
	if(yIn == -1 && ( keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up)) ){ yClick --; }
	if(yIn == 1 && ( keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down)) ){ yClick ++; }
	
	clickEnter = keyboard_check_pressed(vk_enter);
	clickSpace = keyboard_check_pressed(vk_space);
	
	clickBackSpace = keyboard_check_pressed(vk_backspace);
	clickPageUp = keyboard_check_pressed(vk_pageup);
	clickPageDown = keyboard_check_pressed(vk_pagedown);
	clickEscape = keyboard_check_pressed(vk_escape);
}