module SudokuUtils
where

existsInRow :: [[Int]] -> Int -> Int -> Bool
existsInRow cs r n = elem n (cs !! r)

existsInColumn :: [[Int]] -> Int -> Int -> Bool
existsInColumn ss c n = elem n (map (\row -> row !! c) ss)
