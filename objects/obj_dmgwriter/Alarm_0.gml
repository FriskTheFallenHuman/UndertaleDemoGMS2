if i = 0 then i = 1
else i = 0

if apparenthp > (actualhp - dmg) then apparenthp -= (round(dmg/20) + 2)
if apparenthp < 0 then apparenthp = 0

alarm[0] = 2

