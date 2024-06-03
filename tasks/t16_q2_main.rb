#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "antonio_ice_cream"
require_relative "../karel/robota"

def task()

  karel = AntonioStrawberry.new(11, 6, Robota::NORTH, 0, :yellow)
  karel2 = AntonioMint.new(11, 16, Robota::NORTH, 0, :black)
  karel3 = AntonioVanilla.new(2, 11, Robota::NORTH, 0, :green)
  karel4 = AntonioChocolate.new(6, 16, Robota::NORTH, 0, :blue)
  karel5 = AntonioCookieDough.new(6, 6, Robota::NORTH, 0, :red)
  world = Robota::World
  world.read_world("../worlds/ice_cream.kwld")
  karel.ice_cream
  karel2.ice_cream
  karel3.ice_cream
  karel4.ice_cream
  karel5.ice_cream


 end

if __FILE__ == $0
  if $graphical
     screen = window(20, 60) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end