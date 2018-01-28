if(timer > 0)
{
	timer--;
}
else
{
	with(obj_newsAnchorGoodCat)
	{
		visible = true;	
	}
	
	instance_destroy();
}