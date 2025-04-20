/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5BC6B0A5
/// @DnDArgument : "code" "global.GunLayer = 1$(13_10)global.AmmoCount = 6$(13_10)$(13_10)image_index = 1$(13_10)image_speed = 0$(13_10)firingdelay = 0;$(13_10)recoil = 0;$(13_10)canreload = 0;$(13_10)$(13_10)if (global.HasPreviousStats = true)$(13_10){$(13_10)	ammo = global.AmmoPersist;$(13_10)	reserve = global.ReservePersist$(13_10)}$(13_10)if (global.HasPreviousStats = false)$(13_10){$(13_10)	ammo = 6;$(13_10)	reserve = 12;$(13_10)}"
global.GunLayer = 1
global.AmmoCount = 6

image_index = 1
image_speed = 0
firingdelay = 0;
recoil = 0;
canreload = 0;

if (global.HasPreviousStats = true)
{
	ammo = global.AmmoPersist;
	reserve = global.ReservePersist
}
if (global.HasPreviousStats = false)
{
	ammo = 6;
	reserve = 12;
}