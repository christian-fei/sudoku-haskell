module Main
where

import Test.Framework
import Test.Framework.Providers.HUnit
import Test.HUnit
import SudokuUtils

main = defaultMain tests

tests = hUnitTestToTests $ TestList $
  [
    numberExistsInRow,
    numberExistsInColumn
  ]

numberExistsInRow =
  existsInRow sudokuMatrix 1 1 ~?= True

numberExistsInColumn =
  existsInColumn sudokuMatrix 1 1 ~?= False

sudokuMatrix :: [[Int]]
sudokuMatrix = [
  [5,3,0,0,7,0,0,0,0],
  [6,0,0,1,9,5,0,0,0],
  [0,9,8,0,0,0,0,6,0],
  [8,0,0,0,6,0,0,0,3],
  [4,0,0,8,0,3,0,0,1],
  [7,0,0,0,2,0,0,0,6],
  [0,6,0,0,0,0,2,8,0],
  [0,0,0,4,1,9,0,0,5],
  [0,0,0,0,8,0,0,7,9]
  ]

