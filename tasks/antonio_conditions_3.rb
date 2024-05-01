#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
require_relative "../mixins/sensor_pack"
class AntonioConditions3 < UrRobot

  include Turner
  include SensorPack

  def move
    if front_is_clear?
      super
     end
    end  
    def pick_beeper
   	if next_to_a_beeper?
       super
   	 end
    end

   def move_and_pick_10
     pick_beeper
     move
     pick_beeper
     move
     pick_beeper
     move
     pick_beeper
     move
     pick_beeper
     move
     pick_beeper
     move
     pick_beeper
     move
     pick_beeper
     move
     pick_beeper
     move
     pick_beeper
     move
     end
 end