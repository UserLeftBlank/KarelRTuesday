#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "antonio_robot"
require_relative "../karel/robota"
 
def task()

  karel = AntonioRobot.new(1, 5, Robota::NORTH, 10)

 karel.move
 karel.put_beeper
 karel.climb_left

 karel.put_beeper
 karel.turn_right
 karel.move_2

 karel.put_beeper
 karel.turn_left
 karel.climb_right
 karel.turn_left

 karel.put_beeper

 karel.move_2
 karel.put_beeper
 karel.move_2

 karel.put_beeper
 karel.turn_right
 karel.climb_left

 karel.turn_right
 karel.put_beeper
 karel.move_2

 karel.move
 karel.put_beeper
 karel.move_2

 karel.put_beeper
 karel.move_2
 karel.put_beeper

 karel.turn_left
 karel.move
 karel.turn_left

 karel.move_2
 karel.move
 karel.turn_left
 end
 
if __FILE__ == $0
  if $graphical
     screen = window(8, 40) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end