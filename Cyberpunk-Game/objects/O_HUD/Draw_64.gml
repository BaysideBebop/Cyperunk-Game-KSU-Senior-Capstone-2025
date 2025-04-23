/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7CF2F082
/// @DnDArgument : "code" "draw_set_color(c_white);$(13_10)draw_sprite(SPR_Coin,0,50,150);$(13_10)draw_text(30, 150,coincount);$(13_10)$(13_10)draw_sprite(SPR_BulletPickup,0,50,200);$(13_10)draw_text(30, 200,global.ReserveCount);$(13_10)$(13_10)// Health Bar$(13_10)if (global.playerhpglob = 3)$(13_10)draw_sprite(SPR_TempHPBar,0,50,50);$(13_10)$(13_10)if (global.playerhpglob = 2)$(13_10)draw_sprite(SPR_TempHPBar,1,50,50);$(13_10)$(13_10)if (global.playerhpglob = 1)$(13_10)draw_sprite(SPR_TempHPBar,2,50,50);$(13_10)$(13_10)if (global.playerhpglob = 0)$(13_10)draw_sprite(SPR_TempHPBar,3,50,50);$(13_10)$(13_10)// Loaded Ammo$(13_10)if (global.AmmoCount = 6)$(13_10)draw_sprite(SPR_AmmoCount,0,50,100);$(13_10)$(13_10)if (global.AmmoCount = 5)$(13_10)draw_sprite(SPR_AmmoCount,1,50,100);$(13_10)$(13_10)if (global.AmmoCount = 4)$(13_10)draw_sprite(SPR_AmmoCount,2,50,100);$(13_10)$(13_10)if (global.AmmoCount = 3)$(13_10)draw_sprite(SPR_AmmoCount,3,50,100);$(13_10)$(13_10)if (global.AmmoCount = 2)$(13_10)draw_sprite(SPR_AmmoCount,4,50,100);$(13_10)$(13_10)if (global.AmmoCount = 1)$(13_10)draw_sprite(SPR_AmmoCount,5,50,100);$(13_10)$(13_10)if (global.AmmoCount = 0)$(13_10)draw_sprite(SPR_AmmoCount,6,50,100);"
draw_set_color(c_white);
draw_sprite(SPR_Coin,0,50,150);
draw_text(30, 150,coincount);

draw_sprite(SPR_BulletPickup,0,50,200);
draw_text(30, 200,global.ReserveCount);

// Health Bar
if (global.playerhpglob = 3)
draw_sprite(SPR_TempHPBar,0,50,50);

if (global.playerhpglob = 2)
draw_sprite(SPR_TempHPBar,1,50,50);

if (global.playerhpglob = 1)
draw_sprite(SPR_TempHPBar,2,50,50);

if (global.playerhpglob = 0)
draw_sprite(SPR_TempHPBar,3,50,50);

// Loaded Ammo
if (global.AmmoCount = 6)
draw_sprite(SPR_AmmoCount,0,50,100);

if (global.AmmoCount = 5)
draw_sprite(SPR_AmmoCount,1,50,100);

if (global.AmmoCount = 4)
draw_sprite(SPR_AmmoCount,2,50,100);

if (global.AmmoCount = 3)
draw_sprite(SPR_AmmoCount,3,50,100);

if (global.AmmoCount = 2)
draw_sprite(SPR_AmmoCount,4,50,100);

if (global.AmmoCount = 1)
draw_sprite(SPR_AmmoCount,5,50,100);

if (global.AmmoCount = 0)
draw_sprite(SPR_AmmoCount,6,50,100);