# frozen_string_literal: true

class MoneyConverter
  NDIGITS_AFTER_POINT = 2

  def self.convert(value)
    integer_part, fractional_part = value.round(NDIGITS_AFTER_POINT).to_s.split(".")

    new_integer_part = integer_part.reverse.gsub(/.{3}(?=.)/, "\\0 ").reverse

    new_fractional_part = if fractional_part.size == NDIGITS_AFTER_POINT
      fractional_part
    elsif integer_part == "0" && fractional_part == "0" && value != 0
      "#{fractional_part}1"
    else
      "#{fractional_part}0"
    end

    "#{new_integer_part},#{new_fractional_part}"
  end
end
