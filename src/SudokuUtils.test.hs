module Main
where

import Test.Framework
import Test.Framework.Providers.HUnit
import Test.HUnit
import SudokuUtils

main = defaultMain tests

tests = hUnitTestToTests $ TestList $
  [
    numberExistsInRow
  ]

numberExistsInRow =
  existsInRow sudokuMatrix 0 1 ~?= False

-- sudokuMatrix :: [[Int]]
sudokuMatrix = [
  [1,2,3,4,5,6,7,8,9],
  [1,2,3,4,5,6,7,8,9],
  [1,2,3,4,5,6,7,8,9],
  [1,2,3,4,5,6,7,8,9],
  [1,2,3,4,5,6,7,8,9],
  [1,2,3,4,5,6,7,8,9],
  [1,2,3,4,5,6,7,8,9],
  [1,2,3,4,5,6,7,8,9],
  [1,2,3,4,5,6,7,8,9]
  ]

