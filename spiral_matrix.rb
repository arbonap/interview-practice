def spiral_by_nested_boxes(matrix_size)


     # Loop and create square nested boxes

     for box_number in (0...matrix_size / 2)
         top = left = box_number
         bottom = right = matrix_size - box_number - 1

         for x in (left...right)  # draw top line going >
             puts "(#{x}, #{top})"
         end

         for y in (top...bottom)  # draw right line going \/
             puts "(#{right}, #{y})"
         end

         for x in (right...left).to_a.reverse  # draw bottom line going <
             puts "(#{x}, #{bottom})"
         end

         for y in (bottom...top).to_a.reverse  # draw left line going /\
             puts "(#{left}, #{y})"
         end
     end

     # Odd-width matrices: print center point manually

     if matrix_size.odd?
         puts "(#{matrix_size / 2}, #{matrix_size / 2})"
     end
end

puts spiral_by_nested_boxes(2)
