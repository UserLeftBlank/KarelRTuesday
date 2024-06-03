#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "antonio_rectangle"
require_relative "../karel/robota"

def task()

  karel = AntonioRectangle.new(2, 2, Robota::EAST, INFINITY)
  world = Robota::World
  world.read_world("../worlds/rectangle.kwld")
  karel.task


 end

if __FILE__ == $0
  if $graphical
     screen = window(20, 97) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end