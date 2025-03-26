/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7157C163
/// @DnDArgument : "code" "/// @description Health Bar$(13_10)$(13_10)if (global.playerhpglob = 3)$(13_10)draw_sprite(SPR_TempHPBar,0,healthbar_x,healthbar_y);$(13_10)$(13_10)if (global.playerhpglob = 2)$(13_10)draw_sprite(SPR_TempHPBar,1,healthbar_x,healthbar_y);$(13_10)$(13_10)if (global.playerhpglob = 1)$(13_10)draw_sprite(SPR_TempHPBar,2,healthbar_x,healthbar_y);$(13_10)$(13_10)if (global.playerhpglob = 0)$(13_10)draw_sprite(SPR_TempHPBar,3,healthbar_x,healthbar_y);"
/// @description Health Bar

if (global.playerhpglob = 3)
draw_sprite(SPR_TempHPBar,0,healthbar_x,healthbar_y);

if (global.playerhpglob = 2)
draw_sprite(SPR_TempHPBar,1,healthbar_x,healthbar_y);

if (global.playerhpglob = 1)
draw_sprite(SPR_TempHPBar,2,healthbar_x,healthbar_y);

if (global.playerhpglob = 0)
draw_sprite(SPR_TempHPBar,3,healthbar_x,healthbar_y);