if(timer > 0)
{
	timer--;
}
else
{
	instance_destroy();
	
	with(obj_eggsButton) visible = true;
	with(obj_onionsButton) visible = true;
	with(obj_tomatoesButton) visible = true;
	with(obj_peppersButton) visible = true;
	with(obj_hamButton) visible = true;
	with(obj_cheeseButton) visible = true;
	with(obj_confirmButton) visible = true;
}