exit 0
awk -f program-file file-input-1 file-input2
awk 'program' input-file-1 input-file-2
awk 'program'
awk 'BEGIN { print "Don\47t Panic!"}'
awk '{print}'
#!/usr/bin/env -S awk -f
awk -v sq="'" 'BEGIN { print "Here is a single quote <' sq '>"}'
awk '/li/ {print}' mail-list
awk 'length($0) > 55'
awk '{if(length($0)>max)max=length($0)} END { print max }'
awk 'BEGIN {srand();for (i = 1; i<=7; i++) print int(101*rand())}'
awk '{ x += $5 } END { print "number of bytes: " x}'
ls -l|expand|awk '{if (length($0) > max) max = length($0)} END {print max}'
awk 'NF > 0'
|awk 'END {print NR}'
|awk 'NR % 2 == 0'
|awk 'NR % 2 == 1'
awk '/22/ {print} /24/ {print}'
awk '$6 == "sep" { sum += $5} END {print sum/1024}'
# ignores new lines after: ,{?:||&& do else
f=""
awk '{print("hi")}' f=""
export GAWK_MSG_SRC=1

# Regular expression
awk '/li/ {print $2 }' mail-list
awk '$1 ~ /J/' inventory-shipped
awk 'BEGIN {print "He said \"hi!\" to her."}'
# \\ \a \b \f \n \r \t \v \NNN \xHH \uHH \/ \" \$ \{
awk 'Begin { x = "ABC"; gsub(//, "x", x}; print x}'
# nonstarndard character set [\x00-\x7f]
# \y is the same than \b
tolower()
toupper()
gsub()
sub()
gensub()

# awk variables
FNR
NR
RS
RT
NF
$NF
awk 'BEGIN { RS = "u" } { print $0 }' mail-list
awk '{ print $0 }' RS="u" mail-list
# end of file. "", and "\0" ( not portable)
awk '{ print $(2*2) }' mail-list  # evalúa la expresión dentro del paréntesis
awk '{$2 = 10; print $0}' #changes what awk sees as field $2
awk '{ $6 = ($5 + $4 + $3 + $2); print $0 }' # created the six column
