#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


module Chimney


  def chimney_down
   move
   move
   turn_right
   move
   turn_left
   move
   move
   pick_beeper
   pick_beeper
   turn_right
   move
   pick_beeper
   pick_beeper
   turn_around
  end
  

  def chimney_up
   move
   turn_left
   move
   move
   turn_right
   move
   turn_left
   move
   move
   end
 end