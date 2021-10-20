function scr_monsterdefeat() {
	if killed = 1 then
	{
	global.xpreward[3]+= global.xpreward[myself]
	global.goldreward[3]+= global.goldreward[myself]
	global.vaporspeed=0
	global.monstersprite = sprite_index
	ddd = instance_create(x,y,obj_vaporized)
	//ddd = instance_create(x,y,obj_vaporacquirer)
	ddd.image_speed = 0
	ddd.image_index = 1
	global.kills+=1
	global.areapop[global.area]-=1
	if global.areapop[global.area]<0 then global.areapop[global.area]=0
	global.flag[12]=1
	}
	if killed = 0 then
	{
	//global.xpreward[3]+=floor(global.xpreward[myself]*((global.monstermaxhp[myself]-global.monsterhp[myself])/global.monstermaxhp[myself]))
	global.goldreward[3]+=floor(global.goldreward[myself]*((global.monstermaxhp[myself]-global.monsterhp[myself])/global.monstermaxhp[myself]))
	global.monstersprite = sprite_index
	//global.vaporspeed=0
	//qqq = instance_create(x,y,obj_vaporizedspare)
	ddd = instance_create(x,y,obj_spared)
	ddd.image_speed = 0
	ddd.image_index = 1
	//qqq.image_speed = 0
	//qqq.image_index = 1
	global.flag[10]=1
	}

	global.monster[myself] = 0



}
