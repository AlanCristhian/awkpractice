{
    if ($1 == "@execute") {
        tmp = substr($0, 10)  # Remove "@execute"
        while ((tmp | getline) > 0)
            print
        close(tmp)
    } else
        print
}
