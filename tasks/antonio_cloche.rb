#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
require_relative "../mixins/place_x"

class AntonioCloche < UrRobot
 
  include Turner
  include Place_x

  def move_3
    move
    move
    move
   end

  def place_3_and_right
   place_3
   turn_right
   move
   turn_right
   end

  def place_3_and_left
   place_3
   turn_left
   move
   turn_left
   end
 end