#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"

class AntonioRobot < UrRobot
  
  def reculer
    turn_left
    turn_left
    move
    turn_left
    turn_left
  end
  
  def turn_right
    turn_left
    turn_left
    turn_left
  end

  def place_5
   karel.put_beeper
   karel.move
   karel.put_beeper

   karel.move
   karel.put_beeper
   karel.move

   karel.put_beeper
   karel.move
   karel.put_beeper
  end
 end