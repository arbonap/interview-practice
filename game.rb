# each row must have the numbers 1-9 with no repeats
# each quadrant must have the numbers 1-9 with no repeats
#takes in a 9 by 9 grid
class Sudoku

  def solve

  end

  def solved_rows(unsolved_grid)
    solved_grid = []
    unsolved_grid.each do |row|
      solved_grid << solved_row(row)
    end
    solved_grid
  end

 def missing_cells(unsolved_row)
   solved_row = [1, 3, 5, 2, 9, 7, 8, 6, 4]
   solved_row - unsolved_row
 end


 def solved_row(row)
   #missing_cells
   #for each index with 0, put one of the missing_cells values there
   missing = missing_cells(row)
   solved_row = []  
   row.map! do |num|
    if num == 0
      solved_row << missing.pop
    else
      solved_row << num
    end
   end
   solved_row
 end


  def solved_quadrants(unsolved_grid)
  end

  def solved_quadrant(quad)
    missing = missing_cells(quad)
    solved_quad = []
    quad.map do |num|
      if num == 0
        solved_quad << missing.pop
      else
        solved_quad << num
      end
      p solved_quad
    end
   solved_quad
  end

end

unsolved_grid =
                [[0, 3, 5, 2, 9, 0, 8, 6, 4],
                [0, 8, 2, 4, 1, 0, 7, 0, 3],
                [7, 6, 4, 3, 8, 0, 0, 9, 0],
                [2, 1, 8, 7, 3, 9, 0, 4, 0],
                [0, 0, 0, 8, 0, 4, 2, 3, 0],
                [0, 4, 3, 0, 5, 2, 9, 7, 0],
                [4, 0, 6, 5, 7, 1, 0, 0, 9],
                [3, 5, 9, 0, 2, 8, 4, 1, 7],
                [8, 0, 0, 9, 0, 0, 5, 2, 6]]

expected_grid = [[1,3,5,2,9,7,8,6,4],
                 [9,8,2,4,1,6,7,5,3],
                 [7,6,4,3,8,5,1,9,2],
                 [2,1,8,7,3,9,6,4,5],
                 [5,9,7,8,6,4,2,3,1],
                 [6,4,3,1,5,2,9,7,8],
                 [4,2,6,5,7,1,3,8,9],
                 [3,5,9,6,2,8,4,1,7],
                 [8,7,1,9,4,3,5,2,6]]

solved_row = [7, 3, 5, 2, 9, 1, 8, 6, 4]
solved_quad = [1, 3, 5, 9, 8, 2, 7, 6, 4]

puts Sudoku.new.missing_cells([0, 3, 5, 2, 9, 0, 8, 6, 4]) == [1,7]

puts Sudoku.new.solved_row([0, 3, 5, 2, 9, 0, 8, 6, 4]) == solved_row

Sudoku.new.solved_rows(unsolved_grid).each do |row|
  row == (1..9).to_a.sort
end

puts Sudoku.new.solved_quadrant([0, 3, 5, 0, 8, 2, 7, 6, 4]) == solved_quad

puts Sudoku.new.solved_quadrants(unsolved_grid).each do |quad|
  quad == (1..9).to_a.sort
end

# puts Sudoku.new().solve == expected_grid
