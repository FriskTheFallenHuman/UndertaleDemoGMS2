dongs=0
image_speed=0
intromusic=caster_load("music/story.ogg")
vol=1
caster_play(intromusic,1,0.91)
global.typer=11
global.faceemotion=0
global.facechoice=0
global.msc=0
instance_create(0,0,obj_introtangle)
fadercreator=0
skip=0
global.msg[0]="Long ago^1, two races&ruled over Earth^1:&HUMANS and MONSTERS^5. \\E1 ^1 %"
global.msg[1]="One day^1, war broke&out between the two&races^5. \\E0 ^1 %"
global.msg[2]="After a long battle^1,&the humans were&victorious^5. \\E1 ^1 %" 
global.msg[3]="They sealed the monsters&underground with a magic&spell^4. \\E0 ^1 %"
global.msg[4]="Many years later^2.^2.^4.\\E1 ^1%"
global.msg[5]="      MT. EBOTT&         201X^9 \\E0 %"
global.msg[6]="Legends say that those&who climb the mountain&never return^5.^3 \\E1 %"
//global.msg[7]=" ^9 ^5 \E0 %"
global.msg[7]=" \\E1 %"
global.msg[8]=" ^9 ^5 \\E0 %"
global.msg[9]=" ^9 ^5 ^2 \\E1 %"
global.msg[10]=" ^9 ^5 ^2 \\E2 %"
global.msg[11]=" ^9 ^9 ^9 ^9 ^9 ^9 \\E2 %%"
global.msg[12]=" ^9 ^9 ^9 ^9 ^9  \\E0 %%"
global.msg[13]=" ^9 ^9 ^9 ^9 ^9 ^9 \\E0 %"
global.msg[14]=" %%"
mywriter=instance_create(40,140,OBJ_WRITER)
alarm[0]=3

