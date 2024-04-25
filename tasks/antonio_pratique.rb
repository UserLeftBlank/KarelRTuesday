#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License
require_relative "../karel/ur_robot"

class Pratique < UrRobot

  def turn_right
    turn_left
    turn_left
    turn_left
  end

  def move_5
    move
    move
    move
    move
    move
  end 

  def mettre_5_beepers
    put_beeper
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
  end

  def diagonale_droit
    move
    turn_right
    move
    turn_left
  end

  def diagonale_gauche
    move
    turn_left
    move
    turn_right    
  end
  
  def turn_around
    turn_left
    turn_left
  end

 end