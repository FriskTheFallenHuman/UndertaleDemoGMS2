/// @description Increment our Collision Overlay
#region dev_solids
if (collisions_display == 1 ) // Display our solids
{
	if (instance_exists(obj_solidwide))
	{
		with(obj_solidwide)
	    {
	        if (visible == false)
	            visible = true
	        else
	            visible = false
	    }
	}
	
	if (instance_exists(obj_solidtall))
	{
		with(obj_solidtall)
	    {
	        if (visible == false)
	            visible = true
	        else
	            visible = false
	    }
	}
	
	if (instance_exists(obj_solidsmall))
	{
		with(obj_solidsmall)
	    {
	        if (visible == false)
	            visible = true
	        else
	            visible = false
	    }
	}
	
	if (instance_exists(obj_solidlong))
	{
		with(obj_solidwide)
	    {
	        if (visible == false)
	            visible = true
	        else
	            visible = false
	    }
	}
	
	if (instance_exists(obj_sdl))
	{
	    with (obj_sdl)
	    {
	        if (visible == false)
	            visible = true
	        else
	            visible = false
	    }
	}

	if (instance_exists(obj_sdr))
	{
	    with (obj_sdr)
	    {
	        if (visible == false)
	            visible = true
	        else
	            visible = false
	    }
	}
	
	if (instance_exists(obj_sul))
	{
	    with (obj_sul)
	    {
	        if (visible == false)
	            visible = true
	        else
	            visible = false
	    }
	}

	if (instance_exists(obj_sur))
	{
	    with (obj_sur)
	    {
	        if (visible == false)
	            visible = true
	        else
	            visible = false
	    }
	}
}
#endregion
#region doors
if (collisions_display == 2 ) // Display our doors
{
	if (instance_exists(obj_doorparent))
	{
		with(obj_doorparent)
	    {
	        if (visible == false)
	            visible = true
	        else
	            visible = false
	    }
	}
}
#endregion
#region doormarkers
// TODO: Rework our marker system:
if (collisions_display == 3 ) // Display our markers
{
	if (instance_exists(obj_markerA))
	{
		with(obj_markerA)
	    {
	        if (visible == false)
	            visible = true
	        else
	            visible = false
	    }
	}
	
	if (instance_exists(obj_markerB))
	{
		with(obj_markerB)
	    {
	        if (visible == false)
	            visible = true
	        else
	            visible = false
	    }
	}
	
	if (instance_exists(obj_markerC))
	{
		with(obj_markerC)
	    {
	        if (visible == false)
	            visible = true
	        else
	            visible = false
	    }
	}
	
	if (instance_exists(obj_markerD))
	{
		with(obj_markerD)
	    {
	        if (visible == false)
	            visible = true
	        else
	            visible = false
	    }
	}	
	
	if (instance_exists(obj_markerX))
	{
		with(obj_markerX)
	    {
	        if (visible == false)
	            visible = true
	        else
	            visible = false
	    }
	}
}
#endregion

if (collisions_display > 5)
	collisions_display = 0

collisions_display += 1