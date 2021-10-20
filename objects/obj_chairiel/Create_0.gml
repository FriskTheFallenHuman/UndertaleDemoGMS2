chair=0
if global.plot>20 or global.plot<19 then chair=1
if chair=0 then
{
dsprite = spr_chairiel
usprite = spr_chairiel
lsprite = spr_chairiel
rsprite = spr_chairiel
dtsprite = spr_chairiel
utsprite = spr_chairiel
ltsprite = spr_chairiel
rtsprite = spr_chairiel
}
else
{
dsprite = spr_chairempty
usprite = spr_chairempty
lsprite = spr_chairempty
rsprite = spr_chairempty
dtsprite = spr_chairempty
utsprite = spr_chairempty
ltsprite = spr_chairempty
rtsprite = spr_chairempty
sprite_index=spr_chairempty
}
myinteract=0
facing=1
direction=180
talkedto=0

