# frozen_string_literal: true

require_relative './bowling'

game = Bowling.new

10.times do
  game.sum_score(game.frame)
  p game.score
end
