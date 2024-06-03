#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "antonio_robot"
require_relative "../karel/robota"

def task()

  karel = AntonioRobot.new(3, 3, Robota::EAST, 25)

 karel.place_5
 karel.turn_left
 karel.move

 karel.turn_left
 karel.place_5
 karel.turn_right

 karel.move
 karel.turn_right
 karel.place_5

 karel.turn_left
 karel.move
 karel.turn_left

 karel.place_5
 karel.turn_right
 karel.move

 karel.turn_right
 karel.place_5
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