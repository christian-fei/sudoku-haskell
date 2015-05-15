module SudokuUtils
where

existsInRow :: [[Int]] -> Int -> Int -> Bool
existsInRow matrix row n = elem n (matrix !! row)

existsInColumn :: [[Int]] -> Int -> Int -> Bool
existsInColumn matrix column n = elem n $ pickColumn matrix column
  where pickColumn matrix column = map (\row -> row !! column) matrix
