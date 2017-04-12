def grammatical_names(lst):
    last_name = lst.pop()
    print ", ".join(lst) + ", and " + last_name

grammatical_names(['Beyonce', 'Pat', 'Keith'])
