plotrating=0
scale=1
if room=room_ruins15B then plotrating=13
if room=room_ruins15C then { plotrating=14; scale=0; }
if room=room_ruins15D then plotrating=15
if scale=1 then image_yscale=400
if scale=0 then image_xscale=400

if global.plot>plotrating then instance_destroy()

