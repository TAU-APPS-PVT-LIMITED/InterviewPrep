# This file contains functions explaining various list operations in python
# course: educative.io

# WAP to show various list operations
def list_ops():
    l = [1, 3, 4, 5, 5, 6]
    print('list containing duplicate numbers {}'.format(l))
    len_l = len(l)
    last_valid_index = len_l - 1
    # print('accessing list slice with -ve index l[-len(l)+1] : {}'.format(l[-len_l:-1]))
    # print('accessing list slice with -ve index l[:-1]', l[-len(l)+1])
    msg = '''
    when accessing a list with a -ve index as the start and giving a short hand notation
    as in [-1:], results in: {}, printing last element only since logically traversal here results 
    in moving towards right, which is empty beyond -1. 
    If notation [-1:-5], is used with an intent for reverse traversal i.e. right to left, it again 
    results in:{}. Right traversal results in empty string. On the contrary, if l[-5:-1] is used we
    get : {}, which is same as l[1:5] : {}. 
    Take a note as to how slices give same result with relation:
        l[-x:-y] <=> l[len+(-x):len+(-y)]
    '''.format(l[-1:], l[-1:-5], l[-5:-1],l[1:5])
    print(msg)
    l.reverse()
    print('reversing a list using reverse():l.reverse() which is in-place and persists{}'.format(l))

