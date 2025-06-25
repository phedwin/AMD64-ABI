

'''
how does file buf ptr work

1. open a single file & read - cmp

'''

def read_file_size(first, second):
    f = first.read(1)
    #first.seek(0)
    fp = second.read(1)
    
    if f == fp: 
        return True
    return False