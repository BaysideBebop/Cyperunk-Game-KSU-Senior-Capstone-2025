/// @desc SCR_SlideTransition(mode, targetroom)
/// @arg Mode sets transition mode between next, restart, and goto.
/// @arg Target sets target room when using the goto mode.
function SCR_SlideTransition(){
with (O_Transition)
{
	mode = argument[0]	
	if (argument_count > 1) target = argument[1];
}
}