time+=1

// reset vars

up=false;
down=false;
left=false;
right=false;

// set which keys to try this step

if(keyboard_check(vk_up)){
    try_up=true;
}
if(keyboard_check_released(vk_up)){
    try_up=false;
}

if(keyboard_check(vk_down)){
    try_down=true;
}
if(keyboard_check_released(vk_down)){
    try_down=false;
}

if(keyboard_check(vk_right)){
    try_right=true;
}
if(keyboard_check_released(vk_right)){
    try_right=false;
}

if(keyboard_check(vk_left)){
    try_left=true;
}
if(keyboard_check_released(vk_left)){
    try_left=false;
}

// check hardware for keypresses

if(try_up){
    up=keyboard_check_direct(vk_up);
}
if(try_down){
    down=keyboard_check_direct(vk_down);
}
if(try_left){
    left=keyboard_check_direct(vk_left);
}
if(try_right){
    right=keyboard_check_direct(vk_right);
}

// check for key released (to ensure no unwanted movement when next room begins)

if(keyboard_check_released(vk_up)){
    up=false;
}
if(keyboard_check_released(vk_down)){
    down=false;
}
if(keyboard_check_released(vk_left)){
    left=false;
}
if(keyboard_check_released(vk_right)){
    right=false;
}


if keyboard_check(vk_escape) then { quit+=1; if instance_exists(obj_quittingmessage)=false then instance_create(0,0,obj_quittingmessage) }
else quit=0
if quit>20 then { game_end() }

