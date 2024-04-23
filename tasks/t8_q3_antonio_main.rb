#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "antonio_colors"
require_relative "../karel/robota"

def task()

  karel = AntonioColors.new(1, 1, Robota::NORTH, 1, :red)

  karel2 = AntonioColors.new(1, 1, Robota::NORTH, 0, :red)

 end
 
if __FILE__ == $0
  if $graphical
     screen = window(12, 40) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end