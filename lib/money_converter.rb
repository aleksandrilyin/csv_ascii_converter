class MoneyConverter
  def self.convert(value)
    split_value = value.to_s.split('.')
    integer_part, fractional_part = split_value
    new_integer_part = integer_part.reverse.gsub(/.{3}(?=.)/, '\0 ').reverse
    numeric_array = fractional_part.split(//)

    if numeric_array[1].nil?
      new_fractional_part = numeric_array[0] + '0'
    elsif numeric_array[1] < '5' && !numeric_array[2].nil?
      new_fractional_part = numeric_array[0] + (numeric_array[1].to_i + 1).to_s
    else
      new_fractional_part = numeric_array[0] + numeric_array[1]
    end

    [new_integer_part, new_fractional_part].join(',')
  end
end
