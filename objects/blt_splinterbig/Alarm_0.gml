i=0
while(i<9)
  {
  blt=instance_create(x+3,y+3,blt_splinter)
  blt.dmg=dmg
  blt.direction=i*40
  i+=1
  }
instance_destroy()

