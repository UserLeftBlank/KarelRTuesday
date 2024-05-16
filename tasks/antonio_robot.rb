#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
require_relative "../mixins/place_x"
require_relative "../mixins/sensor_pack"
class AntonioRobot < UrRobot
  include Turner
  include Place_x
  include SensorPack

 def climb_left
   turn_left
   move
   turn_right
   move
   end

  def climb_right
   turn_right
   move
   turn_left
   move
   end
  def tache
   move
   move
   move 
   move 
   move 
   move 
   move 
   turn_left 
   turn_left
   turn_left 
   move 
   move 
   move 
   put_beeper
   end
 end