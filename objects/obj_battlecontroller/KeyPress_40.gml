
if global.mnfight = 0 then
{




if global.bmenuno = 1 || global.bmenuno = 2 || global.bmenuno = 11 then
{
global.bmenucoord[1] += 1
if global.bmenucoord[1] > 2 then global.bmenucoord[1] = 0
if global.monster[0] = 0 and global.monster[2] = 0 then global.bmenucoord[1] = 1
if global.bmenucoord[1] = 0 and global.monster[0] = 0 then global.bmenucoord[1] = 1
if global.bmenucoord[1] = 1 and global.monster[1] = 0 then global.bmenucoord[1] = 2
if global.bmenucoord[1] = 2 and global.monster[2] = 0 then global.bmenucoord[1] = 0
}

if global.bmenuno = 10 then
{
nowcoord = global.bmenucoord[2]
if global.bmenucoord[2] != 2 and global.bmenucoord[2] != 5 then global.bmenucoord[2] +=1
else global.bmenucoord[2] -= 2
if global.choices[global.bmenucoord[2]] = 0 and global.bmenucoord[2] >2 then global.bmenucoord[2] = 3
if global.choices[global.bmenucoord[2]] = 0 and global.bmenucoord[2] <=2 then global.bmenucoord[2] = 0
}


if global.bmenuno=3 || global.bmenuno=3.5 then
    {
    mv=0
    tempcheck=global.bmenucoord[3]
    if global.bmenuno=3.5 then tempcheck+=4
      if global.bmenucoord[3] = 2 || global.bmenucoord[3] = 3
        {
        global.bmenucoord[3]-=2
        mv=1
        }
      if mv=0
      if global.bmenucoord[3]= 0 || global.bmenucoord[3] = 1
       {
       global.bmenucoord[3]+=2
       if global.item[tempcheck+2]=0 then global.bmenucoord[3]-=2
       mv=1
       }
    }
    
if global.bmenuno=4 then
    {
    if global.bmenucoord[4]=0 and global.mercy<1 then global.bmenucoord[4]=1
    else global.bmenucoord[4]=0
    }


}


