#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "antonio_conditions_3"
require_relative "../karel/robota"

def task()
  world = Robota::World
  world.read_world("../worlds/aleatoire.kwld")

 karel = AntonioConditions3.new(2, 2, Robota::NORTH, 0)

 karel.move_and_pick_10
 karel.turn_right
 karel.move

 karel.turn_right
 karel.move_and_pick_10
 karel.turn_left

 karel.move
 karel.turn_left
 karel.move_and_pick_10

 karel.turn_right
 karel.move
 karel.turn_right

 karel.move_and_pick_10
 karel.turn_left
 karel.move

 karel.turn_left
 karel.move_and_pick_10
 karel.turn_right

 karel.move
 karel.turn_right
 karel.move_and_pick_10

 karel.turn_left
 karel.move
 karel.turn_left

 karel.move_and_pick_10
 karel.turn_right
 karel.move

 karel.turn_right
 karel.move_and_pick_10
 karel.turn_left
 
 karel.move
 karel.turn_left
 karel.move_and_pick_10
 end
 
if __FILE__ == $0
  if $graphical
     screen = window(12, 90) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end