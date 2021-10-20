 selected=65
charname=""
naming=3
selected2=0
selected3=0
q=0
iniread=ini_open("undertale.ini")
if ini_section_exists("General") then
    {
    name=ini_read_string("General","Name",0)
    love=ini_read_real("General","Love",0)
    time=ini_read_real("General","Time",0)
    kills=ini_read_real("General","Kills",0)
    roome=ini_read_real("General","Room",0)
    ini_close()
    }
menusong1=caster_load("music/menu1.ogg")
menusong2=caster_load("music/menu2.ogg")
menusong3=caster_load("music/menu3.ogg")
menusong4=caster_load("music/menu4.ogg")

ini_open("undertale.ini")
m2=ini_read_real("Flowey","Met1",0)
m3=ini_read_real("Toriel","TK",0)
m4=ini_read_real("Toriel","TS",0)
ini_close()

m2=file_exists("file0")
caster_loop(menusong1,0.45,1)
if m2>0 then caster_loop(menusong2,0.45,1)
if m3>0 then caster_loop(menusong3,0.6,1)
if m4>0 then caster_loop(menusong4,0.6,1)

