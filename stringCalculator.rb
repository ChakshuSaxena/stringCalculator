def addString(numbers)
  return 0 if numbers.nil? || numbers.strip.empty?
  negative = false
  current_no = ''
  sum = 0
  numbers.each_char do |i|
    if i == ',' || i == '\n'
      if !current_no.empty?
        sum += negative ? -current_no.to_i : current_no.to_i
        current_no = ''
        negative = false
      end
    elsif i == '-'
      negative = true if current_no.empty?
    elsif i.match?(/\d/)
      current_no += i 
    end
  end
  sum += negative ? -current_no.to_i : current_no.to_i
  sum
end

# ------************* TestCases ***********---------------------

# Rspec.describe '#addString' do
#   it 'handle condition if number string is empty' do
#     expect(addString("")).to eq(0)
#   end

#   it 'handle condition if number string is having positive no.' do
#     expect(addString("1")).to eq(1)
#   end

#   it 'handle condition if number string is having positive number with comma(,)' do
#     expect(addString("1,2")).to eq(3)
#   end

#   it 'handle condition if number string is having positive number with newline(\n)' do
#     expect(addString("1,\n2")).to eq(3)
#   end

#   it 'handle condition if number string is having negative number' do
#     expect(addString("-1")).to eq(-1)
#   end
#     it 'handle condition if number string is having negative number with comma(,)' do
#     expect(addString("-1,-2")).to eq(-3)
#   end

#   it 'handle condition if number string is having negative number with newline(\n)' do
#     expect(addString("-1,\n-2")).to eq(-3)
#   end
# end
