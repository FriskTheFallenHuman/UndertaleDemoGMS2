function draw_self_border() {
	l=0
	t=0
	w=sprite_width
	h=sprite_height

	ll=global.idealborder[0]-x
	tt=global.idealborder[2]-y
	ww=(x+w)-global.idealborder[1]
	hh=(y+h)-global.idealborder[3]

	if ll>0 then l+=ll
	if tt>0 then t+=tt
	if ww>0 then w-=ww
	if hh>0 then h-=hh

	draw_sprite_part(sprite_index,image_index,l,t,w,h,x+l,y+t)
	//draw_text(0,0,tt)
	//draw_text(0,20,ll)
	//draw_text(0,40,ww)
	//draw_text(0,60,hh)



}
