if(timer > 0)
{
	timer--;
}
else
{
	with(obj_newsAnchorGoodSpace)
	{
		visible = true;	
	}
	
	visible = false;
	//instance_destroy();
}