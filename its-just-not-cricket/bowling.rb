# frozen_string_literal: true

# bowling game class to tdd
class Bowling
  attr_reader :score

  def initialize
    @score = 0
    @modifier = []
  end

  def sum_score(add_frame)
    @score += add_frame
  end

  def frame
    pins = (1..10).to_a

    roll1 = pins.sample
    pins.pop(roll1)

    # if pins.any?
    #   roll2 = pins.sample
    # else
    #   roll2 = 0
    # end

    pins.any? ? roll2 = pins.sample : roll2 = 0

    frame_modifier(roll1, roll2)
  end

  def frame_modifier(ball1, ball2)
    frame_score = 0
    if @modifier.any?
      frame_score += (ball1 * 2)
      @modifier.shift
      if @modifier.any?
        frame_score += (ball2 * 2)
        @modifier.shift
      else
        frame_score += ball2
      end
    else
      frame_score += (ball1 + ball2)
    end
    strike if ball1 == 10
    spare if ball1 < 10 && (ball1 + ball2 == 10)
    frame_score
  end

  def strike
    @modifier << 'x' << 'x'
  end

  def spare
    @modifier << '/'
  end
end
