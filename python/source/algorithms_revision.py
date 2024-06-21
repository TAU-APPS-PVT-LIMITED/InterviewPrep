# code educative.io, visual introduction to algorithms

# binary search

def binary_search(l, num):
    min_idx, max_idx = 0, len(l) - 1
    while max_idx >= min_idx:
        avg = (min_idx + max_idx) // 2
        if num == l[avg]:
            return '{} found at position: {}'.format(num,avg)
        elif num > l[avg]:
            min_idx = avg + 1
        else:
            max_idx = avg - 1
    return '{} not found at any position'.format(num)
