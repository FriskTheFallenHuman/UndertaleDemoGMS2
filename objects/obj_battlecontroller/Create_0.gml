script_execute(SCR_BORDERSETUP,0,0,0,0,0);
script_execute(scr_battlegroup,0,0,0,0,0);
global.mercyuse=-1
global.inbattle=1 
global.itemused=0
runaway=0

global.msg[4] = global.msg[0]

if global.actfirst = 0 and global.extraintro = 0 then
{
global.myfight = 0
global.mnfight = 0
global.typer = 1
instance_create(global.idealborder[0],global.idealborder[2],OBJ_WRITER)
}

global.turn=0
global.turntimer = -1
won = 0
global.heard = 0

