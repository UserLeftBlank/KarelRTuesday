#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
require_relative "../mixins/sensor_pack"
require_relative "../mixins/x_variable"
class AntonioRectangle < UrRobot
  include Turner
  include SensorPack
  include XVariable

   def run(x=1)
 	  x.times do 
 	  if next_to_a_beeper?
 	 	pick_beeper
      else 
      	put_beeper
       end
       move
       end
     end

    def row_sweep(x=1)
     x.times do
     	run(17)
     	turn_left
     	move
     	turn_left
     	run(17)
     	turn_right
     	move
     	turn_right
     end
     end
    
    def task
     loop do
     row_sweep(8)
     run(17)
     turn_left
     move
     turn_left
     run(17)
     turn_left
     move(17)
     turn_left
     end
     end



 end