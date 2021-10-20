function scr_levelup() {
	currentlevel=global.lv
	if global.xp >= 10 then global.lv=2
	if global.xp >= 30 then global.lv=3
	if global.xp >= 70 then global.lv=4
	if global.xp >= 120 then global.lv=5
	if global.xp >= 200 then global.lv=6
	if global.xp >= 300 then global.lv=7
	if global.xp >= 500 then global.lv=8
	if global.xp >= 800 then global.lv=9
	if global.xp >= 1200 then global.lv=10
	if global.xp >= 1700 then global.lv=11
	if global.xp >= 2500 then global.lv=12
	if global.xp >= 3500 then global.lv=13
	if global.xp >= 5000 then global.lv=14
	if global.xp >= 7000 then global.lv=15
	if global.xp >= 10000 then global.lv=16
	if global.xp >= 15000 then global.lv=17
	if global.xp >= 25000 then global.lv=18
	if global.xp >= 50000 then global.lv=19
	if global.xp >= 99999 then 
	   {
	   global.lv=20
	   global.xp=99999
	   }
	if global.lv!=currentlevel then
	  {
	  levelup=true
	  global.maxhp+=((global.lv-currentlevel)*4)
	  global.maxen+=((global.lv-currentlevel)*4)
	  global.at+=(global.lv-currentlevel)
	  global.df+=(global.lv-currentlevel)
	  }
	  else levelup=false



}
