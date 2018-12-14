require "csv"

table_format = -> (a : Array(String)) { a.join(" | ") }

parser = CSV::Parser.new(ARGF)
headers = parser.next_row
if headers
  spacer = headers.dup.map { "---" }
end

content = [] of String
parser.each_row do |row|
  content << table_format.call row
end

if headers && spacer && content
  headers = table_format.call headers
  spacer = table_format.call spacer
  content = content.join("\n")
  puts [headers , spacer , content].join("\n")
end
