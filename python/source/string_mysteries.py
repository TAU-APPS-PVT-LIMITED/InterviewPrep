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


# in built string operations
def string_in_built_ops():
    print("educative".endswith('ve'))
    print("educative".find('e'))
    print("educative".rfind('e'))
    print("educative".count('e'))
    print("educative".replace('e', '..E..'))
    print("educative".startswith('edu'))
    print("educative".capitalize())
    print("EDUCATIVE".lower())
    print("eDUCATIVE".swapcase())
    print("welcome to educative".title())
    print("educative".upper())
    print("a5".isalnum())
    print("abc".isalpha())
    print("5".isdigit())
    print("abc".islower())
    print("\t".isspace())
    print("Welcome to Educative".istitle())
    print("EDUCATIVE".isupper())


# WAP to check if strings are anagrams or not.
# An anagram is a text formed by rearranging the letters of another piece of text
