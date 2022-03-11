# frozen_string_literal: true

class Bowling
  attr_reader :score

  def initialize
    @score = 0
  end

  def roll(pins_hit)
    @score += pins_hit
  end
end
