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
