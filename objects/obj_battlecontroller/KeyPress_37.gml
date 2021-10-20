if keyboard_check_pressed(vk_right) = false

{

currentplace=global.bmenucoord[0]

if global.mnfight = 0 then
{
if global.bmenuno = 0 then
{
global.bmenucoord[0] -= 1
if global.bmenucoord[0] < 0 then global.bmenucoord[0] = 3
if global.mercy = 2 and global.bmenucoord[0]=3 then global.bmenucoord[0]=2
}



// 0 1   4 5
// 2 3   6 7

if global.myfight!=4
if global.bmenuno = 3 then //1st page of items
{
tempcheck=global.bmenuno
  mv=0
  if global.bmenucoord[3] = 1 then //topright
   {
   global.bmenucoord[3] = 0
   mv=1
   }
  if mv=0
  if global.bmenucoord[3] = 0 then //topleft
     {
       if global.item[5]!= 0 then
         {
          global.bmenucoord[3] = 1
          global.bmenuno=3.5
         }
       if global.item[5]=0 and global.item[4]!=0 then
         {
          global.bmenucoord[3] = 0
          global.bmenuno=3.5
         }
       if global.item[4]=0 then global.bmenucoord[3]=1
       if global.item[1]=0 then global.bmenucoord[3]=0
     }
     
   if global.bmenucoord[3] = 3 then //bottomright
     {
     global.bmenucoord[3]=2
     mv=1
     }
  
   if mv=0
    if global.bmenucoord[3] = 3 then //bottomleft
     {
       if global.item[7]!= 0 then
         {
          global.bmenucoord[3] = 3
          global.bmenuno=3.5
         }
       if global.item[7]=0 and global.item[6]!=0 then
         {
          global.bmenucoord[3] = 2
          global.bmenuno=3.5
         }
       if global.item[6]=0 then global.bmenucoord[3]=3
       if global.item[3]=0 then global.bmenucoord[3]=2
     }
   if global.bmenuno!=tempcheck then scr_itemrewrite()
   
}

// 0 1   4 5
// 2 3   6 7

if global.myfight!=4
if global.bmenuno = 3.5 then
   {
   tempcheck=global.bmenuno
   mv=0
   if global.bmenucoord[3]=1 then
     {
     global.bmenucoord[3]=0
     mv=1
     }
   if mv=0
   if global.bmenucoord[3]=0 then
     {
     mv=1
     global.bmenuno=3
     global.bmenucoord[3]=1
     }
   if mv=0
   if global.bmenucoord[3]=3 then
     {
     global.bmenucoord[3]=2
     mv=1
     }
   if mv=0
   if global.bmenucoord[3]=2 then
     {
     mv=1
     global.bmenuno=3
     global.bmenucoord[3]=3
     }
   if mv=1 then sound_play(snd_squeak)
   if global.bmenuno!=tempcheck then scr_itemrewrite()
   }



if global.bmenuno = 10 then
{
if global.bmenucoord[2] <= 2 then global.bmenucoord[2] +=3
else global.bmenucoord[2] -=3
if global.choices[global.bmenucoord[2]] = 0 then global.bmenucoord[2] -= 1
}



if global.bmenuno = 6 then
{
if global.bmenucoord[6] = 0 then global.bmenucoord[6] += 1
else global.bmenucoord[6] -= 1
}

}

if global.bmenucoord[0] != currentplace then sound_play(snd_squeak)


}

