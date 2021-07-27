require 'smarter_csv'
require 'terminal-table'

filename = 'public/sample.csv'
options = { col_sep: ';' }
rows = []

data = SmarterCSV.process(filename, options).each do |d|
  rows << d.values
end

table = Terminal::Table.new do |t|
  t.rows = rows
  t.align_column(0, :right)
  t.align_column(2, :right)
  t.style = { all_separators: true, padding_left: 0, padding_right: 0 }
end

puts table
