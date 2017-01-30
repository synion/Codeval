print "Enter first number : "
first_number = gets.chomp
print "Enter second number : "
second_number = gets.chomp
print "Enter thirt number : "
thirt_number = gets.chomp
total = [first_number,second_number,thirt_number].map(&:to_f).inject(:+)
p totalw
