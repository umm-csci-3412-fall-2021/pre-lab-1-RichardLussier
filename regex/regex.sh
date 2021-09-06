#Takes the text inside of r0_input.txt and looks for a "<first word>, <second word>" pattern and puts it into an array called groups.
#It will then output a file r0_output.txt that organizes all found words into the pattern:

#1. <first word>
#2. <second word>
#

#and will continue this for all found patterns
awk 'match($0, /([a-zA-Z]+), ([a-zA-Z]+)/, groups) {print "1. " groups[1] "\n" "2. " groups[2] "\n" }' < r0_input.txt > r0_output.txt

#Takes the text inside of r1_input.txt and looks for "I am <word beginning with uppercase>. My favorite sandwhich is <word>." and stores the unknown words into an array called groups.
#Then, it will output a file r1_output.txt that organizes these found words in the format:

#1. <word beginning with uppercase>
#2. <word>
#

#and will continue this for all found patterns
awk 'match($0, /I am ([A-Z].+)\. My favorite sandwich is ([a-z]+)\./, groups) {print "1. " groups[1] "\n" "2. " groups[2] "\n" }' < r1_input.txt > r1_output.txt
