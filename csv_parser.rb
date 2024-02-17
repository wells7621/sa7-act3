#open file
File.open('data.csv', 'r') do |file|

#read the column names
column_names = file.readline.chomp.split(',')

data = []

#convert file to hashes
file.each_line do |line|
    values = line.chomp.split(',')
    hash = {}
    column_names.each_with_index do |column_names, index|
        hash[column_names] = values[index]
    end
    data << hash
end

#close file
file.close

p data

end