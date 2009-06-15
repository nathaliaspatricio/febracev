# -*- coding: utf-8 -*-

def parse_search_input(search_input):

    search_terms = []
    term = u''
    COMPOUND_TERM = False

    for char in search_input:
        if (char == '"' and not COMPOUND_TERM):
            search_terms.append(term)
            term = ''
            COMPOUND_TERM = True
        elif (char == '"'):
            search_terms.append(term)
            term = ''
            COMPOUND_TERM = False
        elif (char == ' ' and not COMPOUND_TERM):
            search_terms.append(term)
            term = ''
        else:
            term+=char

    search_terms.append(term)

    search_terms = [item for item in search_terms if item]

    return search_terms
