require_relative "../acronymize" # library / file to test

describe "#acronymize" do
  it "returns FAQ for 'Frequently Asked Questions'" do
    actual = acronymize("Frequently Asked Questions") # call the code
    expected = "FAQ" # expected result

    # RSpec to compare both:
    expect(actual).to eq(expected)
  end
end
