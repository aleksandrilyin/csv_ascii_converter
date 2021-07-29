class StringConverter
  def self.convert(value)
    value.gsub(/ /, "\n")
  end
end
