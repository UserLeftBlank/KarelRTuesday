#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

require_relative "../karel/ur_robot.rb"

# a task for a stair sweeper
def task()
  world = Robota::World
  world.read_world("../worlds/beepers.txt")
  
  karel = ur_robot.new(3, 3, North, 5)
  karel.put_beeper
  karel.move
  karel.put_beeper

  karel.move
  karel.put_beeper
  karel.move

  karel.put_beeper
  karel.move
  karel.put_beeper

  karel.turn_off()

  
end

if __FILE__ == $0
  if $graphical
     screen = window(8, 10) # (size, speed)
     screen.run do
       task()
     end
   else
     task()
   end
end