#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "antonio_conditions_2"
require_relative "../karel/robota"

def task()
  world = Robota::World
  world.read_world("../worlds/T11_q1Test")

 karel = AntonioConditions2.new(1, 1, Robota::NORTH, 1)
 karel.move
 karel.move

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