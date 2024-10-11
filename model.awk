#!/usr/bin/env -S awk -f
# comment
BEGIN {} # This is executed before reading inputs
END {} # executed after all inputs
""  # Null character
getline <= 0  # check for errors
getline > 0 # true if no errors
getline tmp  # stores the next line on tmp
getline < INPUT  # read from INPUT command or file
getline VAR < INPUT  # read from INPUT command or file and stores it on VAR
close()  # close the file readed for getline
("date") | getline current_time  # stores the output of date on current_time

# Sends a query to ´db_server´ and then reads the result.
print "SOME QUERY" |& "db_server"
"db_server" |& getline  # the record is splitted into fields
COMMAND |& getline VAR  # the output of COMMAND is sent through getline and VAR
                        # the record is not split into fields
# search summary of ´getline´
PROCINFO[service, "READ_TIMEOUT"] = 5000 # wait for 5 second
PROCINFO[service, "RETRY"] = 1 # retry once if error
print ITEM1, ITEM2, ...
