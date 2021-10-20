alarm[1]=3
canchoose=0
add=__view_get( e__VW.XView, view_current )
x=89+add
y=210+__view_get( e__VW.YView, view_current )
if obj_mainchara.y > __view_get( e__VW.YView, view_current )+130 then y-=155
mychoice=0
global.choice=-1

