module SudokuUtils
where

existsInRow :: [[Int]] -> Int -> Int -> Bool
existsInRow matrix row n = elem n (matrix !! row)

existsInColumn :: [[Int]] -> Int -> Int -> Bool
existsInColumn matrix column n = elem n $ pickColumn matrix column
  where pickColumn matrix column = map (\row -> row !! column) matrix

existsInBox :: [[Int]] -> Int -> Int -> Int -> Bool
existsInBox matrix row column n =
  where rowOffset =  (quot row 3) * 3
    columnOffset =  (quot column 3) * 3
