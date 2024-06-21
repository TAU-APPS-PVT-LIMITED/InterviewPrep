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


# WAP for following:
# palindrome, sort, reverse, fibonacci, matrix multiplication, matrix diagonal sum
# show a 2D array in matrix form, calculate sum of per column,
# in-built function: reversed(), sorted(), hex(), bin()
# isalpha,isalnum, isupper, islower, isdigit, isspace

def list_methods_value_ops():
    a = [1, 2, 3]
    b = [8, 9]
    print("List a:", a)
    print("List b:", b)

    print("\nAppending 4 in list a")
    a.append(4)  # Appending 4 in list a
    print("List a:", a)

    print("\nAppending complete list b as sublist in a ")
    a.append(b)  # Appending complete list b as sublist in a
    print("List a:", a)
    print("List b:", b)

    print("\nCreating a new copy of list b in list c")
    c = b.copy()  # Creating a new copy of list b in list c
    print("List b:", b)
    print("List c:", c)

    print("\n Referencing: list d is an other name of list b")
    d = b  # Referencing: list d is an other name of list b
    print("List d:", d)

    print("\n Appends all members of b to list c")
    c.extend(b)  # Appends all members of b to list c
    print("List c:", c)

    print("\nInserting 15 at index 1 in list b")
    b.insert(1, 15)  # Inserting 15 at index 1 in list b
    print("List b:", b)
    print("List d:", d)

    d = [1, 2, 3, 4, 5, 6]
    print("list d:", d)
    print("\nRemoving value at index 1 from list d using pop() function")
    d.pop(1)  # Removing value at index 1 from list d using pop() function
    print(d)

    print("\nRemoving the value 3 from list d using remove() function")
    d.remove(3)  # Removing the value 3 from list d using remove() function
    print(d)

    print("\nRemoving all values list d using clear() function")

    d.clear()  # Removing all values list d using clear() function
    print(d)

    e = [1, 1, 3, 40, 4, 4, 4, 5]
    print('The original list:', e)
    print("The number of 1s in the list:", e.count(1))
    print('The index of 40 in the list:', e.index(40))
