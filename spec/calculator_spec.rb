# ------************* TestCases ***********---------------------
require 'rspec/core'
require_relative '../stringCalculator'

Rspec.describe '#addString' do
  it 'handle condition if number string is empty' do
    expect(addString("")).to eq(0)
  end

  it 'handle condition if number string is having positive no.' do
    expect(addString("1")).to eq(1)
  end

  it 'handle condition if number string is having positive number with comma(,)' do
    expect(addString("1,2")).to eq(3)
  end

  it 'handle condition if number string is having positive number with newline(\n)' do
    expect(addString("1,\n2")).to eq(3)
  end

  it 'handle condition if number string is having negative number' do
    expect(addString("-1")).to eq(-1)
  end
    it 'handle condition if number string is having negative number with comma(,)' do
    expect(addString("-1,-2")).to eq(-3)
  end

  it 'handle condition if number string is having negative number with newline(\n)' do
    expect(addString("-1,\n-2")).to eq(-3)
  end
end
