module Sudoku
where

main = do
  board <- getBoard
  putStrLn $ solve board

getBoard :: IO (String)
getBoard = return ""

solve :: String -> String
solve bs = ""
