if global.phasing=0 then
{
x = xprevious
y = yprevious
if global.facing=1 then {x+=3; y-=3}
if global.facing=0 and keyboard_check(vk_right) = false then {x-=3; y+=3}
moving = 0
}

