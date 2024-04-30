#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
require_relative "../mixins/sensor_pack"
class AntonioConditions4 < UrRobot

  include Turner
  include SensorPack

  def move
    if front_is_clear?
      super
     end
    end  
    def put_beeper
   	if next_to_a_beeper?
       super
   	 end
    end

   def move_and_put_10
     put_beeper
     move
     put_beeper
     move
     put_beeper
     move
     put_beeper
     move
     put_beeper
     move
     put_beeper
     move
     put_beeper
     move
     put_beeper
     move
     put_beeper
     move
     put_beeper
     move
     end
 end