require 'smarter_csv'

filename = 'public/sample.csv'
options = {
  col_sep: ';'
}

data = SmarterCSV.process(filename, options).each do |element|
  p element
end
