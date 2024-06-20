# All the problems from the content on educative.io, crash course in python programming language

#
# Write a program to print ordered pairs of x,y with x:range(1,6) and y: range(1,6)
#

def ordered_pairs():
    print("Following is the list of ordered pairs")
    for i in range(1, 6):
        for j in range(1, 6):
            print('(', i, ',', j, ')', end=" ")
        print("")

# Write a program that shows a square shape built with asterisks. The number of asterisks on the
# side of the square is input by the user


def square_from_asteriks():
    num = int(input("Please input the number for square of asteriks: "))
    for i in range(0, num):
        for i in range(0, num):
            print("*",sep='',end='')
        print("")

# Write a program that shows a right triangle built with asterisks. The side length of the right
# triangle is input by the user


def asteriks_right_triangle():
    side = int(input("Please input side length: "))
    print("Here is the right angled triangle")
    for i in range(1, side+1):
        for j in range(1, i+1):
            print('*', end='')
        print("")


# Write a program that displays a hollow square built with asterisks. The length of each side of the
# hollow square shape is input by the user

def asteriks_hollow_square():
    side = int(input("Please input side length: "))
    for i in range(1, side+1):
        for j in range(1, side+1):
            if i == 1 or i == side:
                print('*', end='')
            else:
                if j == 1 or j == side:
                    print("*", end='')
                else:
                    print(' ', end='')
        print('')
