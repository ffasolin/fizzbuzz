require 'fizzbuzz'

describe "fizzbuzz" do
  it 'should return "fizz" if passed 3' do
    expect(fizzbuzz(3)).to eq "fizz"
  end

  it 'should return "buzz" if passed 5' do
    expect(fizzbuzz(5)).to eq "buzz"
  end

  it 'should return "fizzbuzz" if passed 15' do
    expect(fizzbuzz(15)).to eq "fizzbuzz"
  end
end
