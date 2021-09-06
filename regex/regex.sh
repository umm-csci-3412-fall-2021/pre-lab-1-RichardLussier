#Takes the text inside of r0_input.txt and looks for a "<word>, <word>" pattern and puts it into an array called groups
#It will then output a file containing "1. <first word> <new line> 2. <second word> <new line>"
awk 'match($0, /([a-zA-Z]+), ([a-zA-Z]+)/, groups) {print "1. " groups[1] "\n" "2. " groups[2] "\n" }' < r0_input.txt > r0_output.txt

awk 'match($0, /I am ([A-Z].+)\. My favorite sandwich is ([a-z]+)\./, groups) {print "1. " groups[1] "\n" "2. " groups[2] "\n" }' < r1_input.txt > r1_output.txt
