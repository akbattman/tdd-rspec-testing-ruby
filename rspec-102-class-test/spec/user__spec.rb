# frozen_string_literal: true

require_relative '../user' # file to test

describe User do # additinal describe layer to target class
  describe '#full_name' do # instance method target
    it "returns 'Aaron Battman'" do # method return I will code for
      user = User.new('aaron', 'battman')

      actual = user.full_name # call the instance method
      expected = 'Aaron Battman' # expected result as per 'it'

      expect(actual).to eq(expected) # RSpec comparison
    end
  end
end
