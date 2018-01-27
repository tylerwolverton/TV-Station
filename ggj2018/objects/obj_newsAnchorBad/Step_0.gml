if(timer > 0)
{
	timer--;
}
else
{
	with(obj_newsAnchorGood)
	{
		visible = true;	
	}
	
	instance_destroy();
}