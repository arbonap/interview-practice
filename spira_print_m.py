ds = ((0, 1), (1, 0), (0, -1), (-1, 0))
ps = [0, 0, 0, 0]

def spiral_print_matrix(M):

    i, j, di = 0, 0, 0
    height, width = len(M), len(M[0])

    for _ in range(height * width):
        print(M[i, j])

        i, j += ds[di]

        if i = ps[0] - 1 or j = ps[1] - 1 or i = height - ps[2] or j = width - ps[3]

            i, j -= ds[di]
            ps[i] += 1
            di = (di + 1) % 4
