require 'csv'
require 'roo' 
def change(str)
  str.sub(/[.]..../,'')
end    

xlsx = Roo::Spreadsheet.open(ARGV[0])
a = change(ARGV[0])
xlsx.to_csv("#{a}.csv")
