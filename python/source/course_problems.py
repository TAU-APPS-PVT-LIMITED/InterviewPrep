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


# WAP to find the nearest power of 2 for a given number

def nearest_power_of_2():
    num = int(input("Please input desired number: "))
    last_diff = num - 2  # 2 ** 1
    pwr = 1
    i = 2
    while 1:
        current_diff = num - (2 ** i)
        if current_diff < 0:
            pwr = i
            break
        elif current_diff > 0 and last_diff < current_diff:
            pwr



# # Assume that the variable test_value is already defined.
# # num = test_value # The variable test_value contains the value to be tested.
# # pwr = 0 # The variable to store the result calculated with the help of num.
# # You are required to calculate the value of pwr as
# # the power of 2 nearest to the num.
# # You may start your code from here onwards.
# # i = 0
# pwr = 2 ** i # Calculating power before while loop
# lastpower = 0
#
# while(pwr < num):# Checking the power should be less than the num
#     lastpower = pwr # Assigning last power
#     pwr = 2 ** i # Calculating next power
#     i+=1
#
# # Checking difference between the num and the both powers
# diff1 = num - lastpower
# diff2 = pwr - num
# #If the difference between power and number is greater than or equal to
# #the difference between last power and the number then store lastpower in pwr.
# if diff2 >= diff1:
#     pwr = lastpower
# print("The",pwr,"is the power of 2 nearest to", num)
