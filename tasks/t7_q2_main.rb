#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "antonio_robot"
require_relative "../karel/robota"

def task()

  world = Robota::World
  world.read_world("../worlds/antonio_t7_q2.kwld")

  karel = AntonioRobot.new(6, 4, Robota::NORTH, 3)
  
  karel.put_beeper
  karel.move_2
  karel.move

  karel.turn_right
  karel.move_2
  karel.put_beeper
  
  karel.move_2
  karel.turn_right
  karel.move_2

  karel.put_beeper

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