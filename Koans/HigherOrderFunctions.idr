||| Exercises on higher-order functions.
module Koans.HigherOrderFunctions

import Data.List

||| Idris 2's Data.List does not export scanl, so keep the classic list
||| operation here for the scan exercises.
scanl : (acc -> value -> acc) -> acc -> List value -> List acc
scanl step initial [] = [initial]
scanl step initial (value :: values) =
  initial :: scanl step (step initial value) values

myFirstMap : Bool
myFirstMap = ?fillme1 == map (2 *) [1..4]

mySecondMap : Bool
mySecondMap = [1,4,9,16,25] == map ?fillme2 [1..5]

myThirdMap : Bool
myThirdMap = [25,16,9,4,1] == map ?fillme3 [1..5]

myFirstFold : Bool
myFirstFold = foldl (+) 0 [1..4] == ?fillme4

mySecondFold : Bool
mySecondFold = 5 == foldl ?fillme5 5 [1..4]

myFirstScan : Bool
myFirstScan = scanl max 5 [1,2,3,4] == ?fillme6

mySecondScan : Bool
mySecondScan = scanl ?fillme7 5 [1,2,10,1] == [5,5,5,10,10]

myThirdScan : Bool
myThirdScan = scanl div 64 [4,2,4] == ?fillme8

xs : List Int
xs = [1,2,3,4,5,6,7,8,9,10]

myFirstFilter : Bool
myFirstFilter = filter (> 5) xs == ?fillme9

mySecondFilter : Bool
mySecondFilter = filter ?fillme10 xs == [6,7,8,9,10]

||| Combine filter and map to produce the requested words.
myFirstCombination : Bool
myFirstCombination = ["bang", "boom", "bang", "boom", "bang"] ==
  map ?fillme11 (filter ?fillme12 xs)

export
allPass : Bool
allPass = myFirstMap && mySecondMap && myThirdMap && myFirstFold &&
  mySecondFold && myFirstScan && mySecondScan && myThirdScan &&
  myFirstFilter && mySecondFilter && myFirstCombination

main : IO ()
main = printLn allPass
