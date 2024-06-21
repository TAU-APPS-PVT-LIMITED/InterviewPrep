# mysteries of string handling in python
# course: educative.io

def string_chars_ops():
    s = "Gaurav Gupta"
    print('length of the string s is :{}'.format(len(s)))
    print('char at 0 is : {}'.format(s[0]))
    print('last char is at location n - 1: {} which is {}'.format(len(s)-1, s[len(s) - 1]))
    print('To reverse a string, slicing does not work, hence loop is used')
    for i in range(0, len(s)):
        print(s[-(i+1)], end='')
