sound_play(snd_noise)
if __background_get( e__BG.Visible, 1 )=true then
   {
   __background_set( e__BG.Visible, 0, true )
   __background_set( e__BG.Visible, 1, false )
   idealvolume[0]=0
   idealvolume[1]=1
   }
   else
   {
   __background_set( e__BG.Visible, 0, false )
   __background_set( e__BG.Visible, 2, false )
   __background_set( e__BG.Visible, 1, true )
   idealvolume[0]=1
   idealvolume[1]=0
   }
   
myinteract=0
global.interact=0

