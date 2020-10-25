require_relative 'die'

describe Die do

  before do
    @numbers = Set.new
    die = Die.new

    1000.times do
      @numbers.add(die.roll)
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

end
