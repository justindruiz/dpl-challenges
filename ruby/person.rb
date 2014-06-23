class Person

  require_relative 'helper'
  include Helper

  attr_accessor :attributes, :energy

  def initialize(attributes = {})
    @attributes = attributes
    @energy = 10
  end

  # This returns a string of the person's name
  def name
    @attributes[:name]
  end

  def first_name
    name.split(' ').first
  end

  def last_name
    name.split(' ').last
  end

  def age
    @attributes[:age]
  end

  def birthyear
   Time.now.year - age
  end

  def say(words)
    puts words
  end

  def run
    @energy -= rand(5)
  end

  def energy_level
    case @energy
    when -100..-1
      "OMG ABOUT TO DIE!"
    when 0..3
      "tired"
    when 4..6
      "doing ok"
    when 6..10
      "ready to go"
    end
  end

  def energy_level=(amount)
    @energy += amount
  end

end
