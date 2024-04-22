#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "antonio_robot"
require_relative "../karel/robota"

def task()

  world = Robota::World
  world.read_world("../worlds/antonio_t7_q1.kwld")

  karel = AntonioRobot.new(9, 2, Robota::SOUTH, 28)
  
  karel.place_5
  karel.move
  karel.place_3
  karel.turn_left
  karel.move
  karel.place_5
  karel.move
  karel.put_beeper
  karel.move
  karel.put_beeper
  karel.turn_left
  karel.move
  karel.place_5
  karel.move
  karel.put_beeper
  karel.move
  karel.put_beeper
  karel.turn_left
  karel.move
  karel.place_3
  karel.move
  karel.place_3

 end
 
if __FILE__ == $0
  if $graphical
     screen = window(15, 40) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end