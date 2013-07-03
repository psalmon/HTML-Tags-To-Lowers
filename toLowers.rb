#! /usr/bin/ruby

=begin
Paul Salmon
This is designed to force all HTML tags to lowercase.
Accomplished by expression matching, and downcasing, anything between the brackets '< >'

=end

text = File.read(ARGV[0])
print "opened file "
print ARGV[0]
text.gsub!(/(<.*>)/){
	print "\nfound match: " + $1
	$1.downcase
	}


file = File.open(ARGV[0], "r+")
file.write(text)
file.close
puts "\n...done converting to lowercase!"


