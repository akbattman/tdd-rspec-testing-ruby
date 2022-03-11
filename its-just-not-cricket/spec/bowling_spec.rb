# frozen_string_literal: true

require_relative '../bowling' #file to test

# describe Bowling do
#   describe '#score' do
describe Bowling, '#score' do
  context 'with no strikes or spares' do
    it 'sums the pin count for each roll' do
      bowling = Bowling.new
      
      20.times { bowling.roll(4) } # hard code a pin count to get the ball rolling 

      expect(bowling.score).to eq 80
    end
  end
end
# end
