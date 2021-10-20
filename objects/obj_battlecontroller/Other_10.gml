if won = 1 then
if instance_exists(OBJ_WRITER)=false
{
room_goto(global.currentroom)
}

if won = 1 then
if instance_exists(OBJ_WRITER)=true
if OBJ_WRITER.halt!=0 then
{
room_goto(global.currentroom)
}

