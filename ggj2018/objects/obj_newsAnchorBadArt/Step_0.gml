if(timer > 0)
{
	timer--;
}
else
{
	with(obj_newsAnchorGoodArt)
	{
		visible = true;	
	}
	
	instance_destroy();
}