require 'csv'

input_file = 'data.csv'
data = []

CSV.foreach(input_file, headers: true) do |row|
  data << row.to_h
end

puts data.inspect
