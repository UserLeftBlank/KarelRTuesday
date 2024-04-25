#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "antonio_polymorphisme"
require_relative "../karel/robota"

def task()

  karel = AntonioH.new(7, 2, Robota::SOUTH, 12)
  karel2 = AntonioE.new(7, 9, Robota::SOUTH, 11)
  karel3 = AntonioL.new(7, 11, Robota::SOUTH, 7)
  karel4 = AntonioL.new(7, 15, Robota::SOUTH, 7)
  karel5 = AntonioO.new(7, 19, Robota::SOUTH, 14)
  karel.ecrit_lettre
  karel2.ecrit_lettre
  karel3.ecrit_lettre
  karel4.ecrit_lettre
  karel5.ecrit_lettre
 end
 
if __FILE__ == $0
  if $graphical
     screen = window(21, 75) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end