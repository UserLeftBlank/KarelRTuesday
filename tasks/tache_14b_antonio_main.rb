#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "antonio_labyrinthe"
require_relative "../karel/robota"

def task()

  karel = AntonioLabyrinthe.new(19, 2, Robota::EAST, 0)
  world = Robota::World
  world.read_world("../worlds/labyrinthe.kwld")
  karel.move


 end

if __FILE__ == $0
  if $graphical
     screen = window(20, 40) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end