# frozen_string_literal: true

# bowling game class to tdd
class Bowling
  attr_reader :score

  def initialize
    @score = 0
  end

  def roll(pins_hit)
    @score += pins_hit
  end
end
