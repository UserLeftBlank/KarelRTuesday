#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "antonio_robot_face_nord"
require_relative "../karel/robota"

def task()

  karel = AntonioRobotFaceNord.new(5, 5, 0)
  
  karel.turn_left
  karel.move_2
  karel.move_2
  karel.turn_left
  karel.move_2
  karel.move_2



 end
 
if __FILE__ == $0
  if $graphical
     screen = window(15, 40) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end