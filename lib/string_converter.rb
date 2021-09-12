# frozen_string_literal: true

class StringConverter
  def self.convert(value)
    value.tr(" ", "\n")
  end
end
