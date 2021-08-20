class MoneyConverter
  NDIGITS = 2

  def self.convert(value)
    split_value = value.round(NDIGITS).to_s.split('.')
    integer_part, fractional_part = split_value
    new_integer_part = integer_part.reverse.gsub(/.{3}(?=.)/, '\0 ').reverse

    if fractional_part.size == NDIGITS
      new_fractional_part = fractional_part
    elsif integer_part == '0' && fractional_part == '0' && value != 0
      new_fractional_part = "#{fractional_part}1"
    else
      new_fractional_part = "#{fractional_part}0"
    end

    [new_integer_part, new_fractional_part].join(',')
  end
end
