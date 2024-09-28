awk -f program-file input-file-1 input-file-2
awk 'program' input-file-1 input-file-2
awk 'program' # accept inputs
awk 'BEGIN { print "Don\47t Panic!" }' # execute BEFORE input reading
awk '{print}' #interactive cat
#!/usr/bin/env -S awk -f
awk -v sq="'" 'BEGIN { print "Here is a single quote <' sq '>" }'
awk '/li/ {print}' mail-list  # print $0 == print the current line
awk 'length($0) > 55'  # line longer than 55 characters
awk '{if(length($0)>max)max=length($0)}END{print max}' # print longest line
awk 'NF > 0'  # print non empty line
awk 'BEGIN { for (i = 1; i <= 7; i++) print int(101*rand()) }'
awk '{ x += $5 } END { print "number of bytes: " x }' # number of bytes
ls -l| expand |awk '{if (length($0) > max) max = length($0)} END {print max}'
|awk 'END {print NR}'  # count lines of a file
|awk 'NR % 2 == 0' # print even lines
|awk 'NR % 2 == 1' # print odd lines
awk '/12/ {print} /21/ {print}' file1 file2 # multiple rules and anctions
awk '$6 == "sep" { sum += $5} END {print sum/1024}'  # sum column 5
# ignores new line after: ,{?:||&& do else
f=""
awk '{print("hi")}' $f
export GAWK_MSG_SRC=1

# Regular expressions
awk '/li/ { print $2 }' mail-list  # Aplica la expresión regular a todo el row
awk '$1 ~ /J/' inventory-shipped  # Aplica la expresión regular al field 1
awk 'BEGIN { print "He said \"hi!\" to her."}'
# \\ \a \b \f \n \r \t \v \NNN \xHH \uHH \/ \" \$ \{
awk 'BEGIN { x = "ABC"; gsub(//, "x", x); print x}'
# nonstandar character set -> [\x00-\x7F]
# \y is the same than \b
tolower()
toupper()
gsub()
sub()
gensub()

# awk variables
FNR  # number of field in rows
NR  # total number of input rows
RS  # character used as line separator, default is \n
RT  # contains the thing that separates each row
NF  # number of fields
$NF  # last field
awk 'BEGIN { RS = "u" } { print $0 }' mail-list
awk '{ print $0 }' RS="u" mail-list
# end of file: "", and "\0" (not portable)
awk '{ print $(2*2) }' mail-list  # evalúa la expresión dentro del paréntesis
awk '{$2 = 10; print $0}' #changes what awk sees as field $2
awk '{ $6 = ($5 + $4 + $3 + $2); print $0 }' # created the six column
OFS  # output fiel separator
# If you change OFS, you have to change some field to apply the OFS change
echo a b c d | awk '{ OFS = ":"; $1 = $1 #rebuild all fields; print $0 }'
# you can decrement the number of fiels by decrementing NF
echo a b c d | awk '{ NF = 2; print $0 }'
FS # field separator
# remove leading and trailing white spaces by rebuilding $0
echo ' a b c d '|awk '{$1 = $1; print}'
awk 'BEGIN { FS = "" }{print NF}' mail-list # Count amount of characters
IGNORECASE=1
