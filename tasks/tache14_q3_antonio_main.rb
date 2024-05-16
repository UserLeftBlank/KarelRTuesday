#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "antonio_robot"
require_relative "../karel/robota"

def task()

  karel = AntonioRobot.new(1, 1, Robota::NORTH, 1)
  karel.send("tache")
  
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