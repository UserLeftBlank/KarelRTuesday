#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "antonio_robot"
require_relative "../karel/robota"
 include Turner
def task()

  karel = AntonioRobot.new(1, 5, Robota::NORTH, 10)

 karel.move
 karel.put_beeper
 karel.climb_left

 karel.put_beeper
 karel.turn_right
 karel.move

 karel.move
 karel.put_beeper
 karel.turn_left

 karel.climb_right
 karel.turn_left
 karel.put_beeper

 karel.move
 karel.move
 karel.put_beeper

 karel.move
 karel.move
 karel.put_beeper

 karel.turn_right
 karel.climb_left
 karel.turn_right

 karel.put_beeper
 karel.move
 karel.move

 karel.put_beeper
 karel.move
 karel.move

 karel.put_beeper
 karel.move
 karel.move

 karel.put_beeper

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