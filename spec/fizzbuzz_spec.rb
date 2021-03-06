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

  it 'should return n if passed 4' do
    expect(fizzbuzz(4)).to eq 4
  end

  it 'should return "not an Integer" if input is String' do
    expect(fizzbuzz("4")).to eq "Not an Integer."
  end

  it 'tests for "fizzbuzz" up to 100' do
    Array(0..100).select { |i| i % 15 == 0 }.each do |n|
      expect(fizzbuzz(n)).to eq "fizzbuzz"
    end
  end

  it 'tests for "fizz" up to 100' do
    Array(0..100).select { |i| i % 3 == 0 && i % 15 != 0 }.each do |n|
      expect(fizzbuzz(n)).to eq "fizz"
    end
  end

  it 'tests for "buzz" up to 100' do
    Array(0..100).select { |i| i % 5 == 0 && i % 15 != 0 }.each do |n|
      expect(fizzbuzz(n)).to eq "buzz"
    end
  end
end
