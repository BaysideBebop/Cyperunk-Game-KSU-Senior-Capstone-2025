/// @description Move to next room

with (O_Player)
{
	if (hascontrol)
	{
		global.HasPreviousStats = true;
		global.HPPersist = playerhp;
		global.AmmoPersist = O_Gun.ammo;
		global.ReservePersist = O_Gun.reserve;
		global.CoinPersist = O_HUD.coincount;
		hascontrol = false;
		SCR_SlideTransition(TRANS_MODE.GOTO,other.target);
	}
}