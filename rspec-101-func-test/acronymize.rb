# frozen_string_literal: true

# function to write / tdd
def acronymize(sentence)
  # sentence.split(' ').map { |word| word[0] }.join.upcase
  sentence.split(' ').map(&:chr).join.upcase
end
