#!/usr/bin/env ruby
# frozen_string_literal: true

require "smarter_csv"
require "terminal-table"

require_relative "lib/string_converter"
require_relative "lib/money_converter"

filename = $stdin
options = {col_sep: ";", value_converters: {string: StringConverter, money: MoneyConverter}}

rows = []

SmarterCSV.process(filename, options).each { |data| rows << data.values }

table = Terminal::Table.new do |t|
  t.rows = rows
  t.align_column(0, :right)
  t.align_column(2, :right)
  t.style = {all_separators: true, padding_left: 0, padding_right: 0}
end

puts table
