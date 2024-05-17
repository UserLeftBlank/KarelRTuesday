#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "antonio_variable"
require_relative "../karel/robota"

def task()

  karel = AntonioVariable.new(1, 1, Robota::NORTH, 8)
  karel.move(5)
  karel.turn_right
  karel.move(3)
  karel.put_beeper(4)
  karel.move
  karel.back_up
  karel.pick_beeper(2)
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