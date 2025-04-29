/// @description Insert description here
// You can write your code in this editor

particleSystem = part_system_create();



particleType_Player_Fade = part_type_create();

part_type_size(particleType_Player_Fade,1,1,0,0)

part_type_life(particleType_Player_Fade,room_speed*0.25,room_speed*0.25)
part_type_alpha1(particleType_Player_Fade,0.5)