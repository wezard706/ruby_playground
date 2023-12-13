require 'CSV'


# --- CSV.open ---
# CSVオブジェクトとして読み込む
puts "CSV.open start"
csv = CSV.open('sample.csv')
csv.each do |row|
  p row
end

puts "CSV.open with block start"
# CSVオブジェクトとして読み込む（ブロックを渡す）
CSV.open('sample.csv') do |csv|
  csv.each do |row|
    p row
  end
end

# 書き込む
puts "CSV.open with write mode"
CSV.open('output.csv', mode='w') do |csv|
  csv << ['this', 'is', 'test']
end

# --- CSV.read ---
# 配列の配列として読み込む 
puts "CSV.read start"
rows = CSV.read('sample.csv')
rows.each do |row|
  p row
end

# --- CSV.foreach ---
# 配列の配列として読み込む（１行ごと） 
puts "CSV.foreach start"
CSV.foreach('sample.csv') do |row|
  p row
end
