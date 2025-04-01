/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7CF2F082
/// @DnDArgument : "code" "if (global.playerhpglob = 3)$(13_10)draw_sprite(SPR_TempHPBar,0,50,50);$(13_10)$(13_10)if (global.playerhpglob = 2)$(13_10)draw_sprite(SPR_TempHPBar,1,50,50);$(13_10)$(13_10)if (global.playerhpglob = 1)$(13_10)draw_sprite(SPR_TempHPBar,2,50,50);$(13_10)$(13_10)if (global.playerhpglob = 0)$(13_10)draw_sprite(SPR_TempHPBar,3,50,50);"
if (global.playerhpglob = 3)
draw_sprite(SPR_TempHPBar,0,50,50);

if (global.playerhpglob = 2)
draw_sprite(SPR_TempHPBar,1,50,50);

if (global.playerhpglob = 1)
draw_sprite(SPR_TempHPBar,2,50,50);

if (global.playerhpglob = 0)
draw_sprite(SPR_TempHPBar,3,50,50);