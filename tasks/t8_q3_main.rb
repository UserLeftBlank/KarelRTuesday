#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "antonio_colors"
require_relative "../karel/robota"

def task()

  karel = AntonioColors.new(1, 1, Robota::NORTH, 1, :red)
  karel2 = AntonioColors.new(6, 1, Robota::EAST, 0, :blue)
  karel3 = AntonioColors.new(6, 6, Robota::SOUTH, 0, :green)
  karel4 = AntonioColors.new(1, 6, Robota::WEST, 0, :yellow)
  karel5 = AntonioColors.new(1, 1, Robota::NORTH, 0, :black)
  karel.move_2
  karel.move_2
  karel.move

  karel.put_beeper
  karel2.quarter_lap
  karel3.quarter_lap
  karel4.quarter_lap
  karel5.quarter_lap

  karel.turn_quarter_lap
  karel2.turn_quarter_lap
  karel3.turn_quarter_lap

  karel4.turn_quarter_lap
  karel5.turn_quarter_lap
  karel.turn_quarter_lap

  karel2.turn_quarter_lap
  karel3.turn_quarter_lap
  karel4.turn_quarter_lap

  karel5.turn_quarter_lap
  karel.turn_quarter_lap
 end
 
if __FILE__ == $0
  if $graphical
     screen = window(12, 40) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end