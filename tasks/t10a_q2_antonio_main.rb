#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "antonio_vole"
require_relative "../karel/robota"

def task()
  world = Robota::World
  world.read_world("../worlds/grinch.kwld")

 karel = AntonioVole.new(12, 4, Robota::SOUTH, 0)
 karel.chimney_sweep
 karel.turn_move_turn_right
 karel.chimney_sweep

 karel.turn_move_turn_right
 karel.chimney_sweep
 karel.turn_right

 karel.move
 karel.turn_right
 karel.move_3

 karel.move_3
 karel.turn_right
 karel.move

 karel.turn_left
 karel.chimney_sweep
 karel.turn_move_turn_left

 karel.chimney_sweep
 karel.turn_move_turn_left
 karel.chimney_sweep

 karel.turn_right
 karel.move_3
 karel.move_3

 karel.move
 karel.turn_right
 karel.move_3
 
 karel.turn_left
 karel.move
 karel.turn_right

 karel.move
 karel.move
 karel.place_all

 karel.back_up
 end
 
if __FILE__ == $0
  if $graphical
     screen = window(21, 85) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end