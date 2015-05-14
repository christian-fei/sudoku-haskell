module SudokuUtils
where

existsInRow :: [[Int]] -> Int -> Int -> Bool
existsInRow cs r n = existsIn (cs !! r) n

existsIn :: [Int] -> Int -> Bool
existsIn cs n = elem n cs

existsInColumn :: [[Int]] -> Int -> Int -> Bool
existsInColumn ss c n = existsIn (map (\row -> row !! c) ss) n
