#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "antonio_cloche"
require_relative "../karel/robota"

def task()

  karel = AntonioCloche.new(1, 6, Robota::NORTH, 26)

 karel.put_beeper
 karel.move
 karel.turn_left

 karel.move_3
 karel.turn_around
 karel.place_5

 karel.move
 karel.place_2
 karel.turn_around

 karel.move
 karel.turn_right
 karel.move

 karel.turn_left
 karel.place_5
 karel.turn_around

 karel.move
 karel.turn_left
 karel.move

 karel.turn_right
 karel.place_3_and_left
 karel.place_3_and_right

 karel.place_3_and_left
 karel.place_3_and_right
 karel.move

 karel.put_beeper
 karel.turn_left
 karel.move
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