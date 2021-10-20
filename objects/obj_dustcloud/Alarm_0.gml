friction=0.8

direction=random(360)
if rightside<0.75 then direction=180
if rightside>1.25 then direction=0
if topside>1.25 and rightside>1.25 then direction=45
if topside>1.25 and rightside>0.75 and rightside<1.25 then direction=90
if topside>1.25 and rightside<0.75 then direction=135
if topside<0.75 and rightside>1.25 then direction=315
if topside<0.75 and rightside>0.75 and rightside<1.25 then direction=270
if topside<0.75 and rightside<0.75 then direction=235

direction=(-direction)

speed=8

