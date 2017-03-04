def spiral_by_nested_boxes(matrix_size):
    """Spiral coordinates of a matrix of `matrix_size` size.

    This version works by drawing TRBL boxes until the entire matrix
    has been printed.
    """

    # Loop and create square nested boxes

    for box_number in range(0, matrix_size / 2):
        top = left = box_number
        bottom = right = matrix_size - box_number - 1

        for x in range(left, right):  # draw top line going >
            print (x, top)

        for y in range(top, bottom):  # draw right line going \/
            print (right, y)

        for x in range(right, left, -1):  # draw bottom line going <
            print (x, bottom)

        for y in range(bottom, top, -1):  # draw left line going /\
            print (left, y)

    # Odd-width matrices: print center point manually

    if matrix_size % 2 != 0:
        print (matrix_size / 2, matrix_size / 2)




def spiral_by_points(matrix_size):
    """Spiral coordinates of a matrix of n size.

    This version works by looping over all of the points, changing
    directions at the corners.
    """

    min_x = min_y = 0  # Full matrix starts at top left
    max_x = max_y = matrix_size - 1  # ... and can go to bottom right
    curr_x = curr_y = 0  # We begin at top left
    vel_x, vel_y = +1, 0  # ... and are going east

    # Loop over each point, print point then move to the next point

    for i in range(matrix_size ** 2):
        print (curr_x, curr_y)
        curr_x += vel_x
        curr_y += vel_y

        # If going east and at edge, start going down & reduce box \/
        if vel_x == +1 and curr_x == max_x:
            vel_x, vel_y = 0, +1
            min_y += 1

        # If going south and at edge, start going west & reduce box <
        elif vel_y == +1 and curr_y == max_y:
            vel_x, vel_y = -1, 0
            max_x -= 1

        # If going west and at edge, start going up & reduce box /\
        elif vel_x == -1 and curr_x == min_x:
            vel_x, vel_y = 0, -1
            max_y -= 1

        # If going north and at edge, start going east & reduce box >
        elif vel_y == -1 and curr_y == min_y:
            vel_x, vel_y = +1, 0
            min_x += 1
