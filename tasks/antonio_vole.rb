#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
require_relative "../mixins/chimney"
class AntonioVole < UrRobot
 
  include Turner
  include Chimney
 
  def move_3
    move
    move
    move
   end
 
  def turn_move_turn_right
   turn_right
   move_3
   turn_right
   end

  def turn_move_turn_left
   turn_left
   move_3
   turn_left
   end

  def place_8
   put_beeper
   put_beeper
   put_beeper
   put_beeper
   put_beeper
   put_beeper
   put_beeper
   put_beeper
   end

  def place_all
    place_8
    place_8
    place_8
   end
 end