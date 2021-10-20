if outside=0 then
{
OBJ_WRITER.halt=3
global.monster[myself]=0
if global.mnfight=2 then global.mnfight=1
outside=1
instance_destroy()
global.flag[13]=1
global.flag[14]=3
}

