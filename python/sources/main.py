
def bit_manipulations():
    mask = 0x1
    num = 44
    print(f"value of x:{format(bin(num))} & x - 1{format(bin(num - 1))}")
    print("mask ", hex(mask), end=":")
    print("is a crucial one with & operation")


def main():
    bit_manipulations()


if __name__ == '__main__':
    main()
