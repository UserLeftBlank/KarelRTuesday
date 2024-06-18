#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "t_finale_robot"
require_relative "../karel/robota"

def task()

  karel = TFinaleRobot.new(1, 1, Robota::NORTH, 0)
  world = Robota::World
  world.read_world("../worlds/Finale_world.kwld")

  karel.pick_beeper
  karel.move
  
 end

if __FILE__ == $0
  if $graphical
     screen = window(13, 40) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end