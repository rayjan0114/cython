# cython: warn.maybe_uninitialized=True
# mode: error
# tag: werror

def simple_for(n):
    for i in n:
        a = 1
    return a

def simple_for_break(n):
    for i in n:
        a = 1
        break
    return a

def simple_for_pos(n):
    for i in n:
        a = 1
    else:
        a = 0
    return a

def simple_target(n):
    for i in n:
        pass
    return i

def simple_target_f(n):
    for i in n:
        i *= i
    return i

_ERRORS = """
8:12: local variable 'a' might be referenced before assignment
14:12: local variable 'a' might be referenced before assignment
26:12: local variable 'i' might be referenced before assignment
31:12: local variable 'i' might be referenced before assignment
"""
