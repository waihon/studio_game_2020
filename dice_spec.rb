require_relative 'Dice'

describe Dice do

  before do
    @numbers = Set.new
    dice = Dice.new

    1000.times do
      @numbers.add(dice.roll)
    end
  end

  it "rolls and returns a minimum of 1" do
    expect(@numbers.member?(1)).to eq(true)
  end

  it "rolls and return a maximum of 6" do
    expect(@numbers.member?(6)).to eq(true)
  end

  it "rolls and does not return 0" do
    expect(@numbers.member?(0)).to eq(false)
  end

  it "rolls and does not return 7" do
    expect(@numbers.member?(7)).to eq(false)
  end

  it "rolls and returns 1 randomly" do
    expect(@numbers.member?(1)).to eq(true)
  end

  it "rolls and returns 2 randomly" do
    expect(@numbers.member?(2)).to eq(true)
  end

  it "rolls and returns 3 randomly" do
    expect(@numbers.member?(3)).to eq(true)
  end

  it "rolls and returns 4 randomly" do
    expect(@numbers.member?(4)).to eq(true)
  end

end
