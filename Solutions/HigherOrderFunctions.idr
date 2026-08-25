module Solutions.HigherOrderFunctions

import Data.List

scanl : (acc -> value -> acc) -> acc -> List value -> List acc
scanl step initial [] = [initial]
scanl step initial (value :: values) =
  initial :: scanl step (step initial value) values

myFirstMap : Bool
myFirstMap = [2,4,6,8] == map (2 *) [1..4]

mySecondMap : Bool
mySecondMap = [1,4,9,16,25] == map (\x => x * x) [1..5]

myThirdMap : Bool
myThirdMap = [25,16,9,4,1] == map (\x => (6 - x) * (6 - x)) [1..5]

myFirstFold : Bool
myFirstFold = foldl (+) 0 [1..4] == 10

mySecondFold : Bool
mySecondFold = 5 == foldl (\accumulator, value => accumulator) 5 [1..4]

myFirstScan : Bool
myFirstScan = scanl max 5 [1,2,3,4] == [5,5,5,5,5]

mySecondScan : Bool
mySecondScan = scanl max 5 [1,2,10,1] == [5,5,5,10,10]

myThirdScan : Bool
myThirdScan = scanl div 64 [4,2,4] == [64,16,8,2]

xs : List Int
xs = [1,2,3,4,5,6,7,8,9,10]

myFirstFilter : Bool
myFirstFilter = filter (> 5) xs == [6,7,8,9,10]

mySecondFilter : Bool
mySecondFilter = filter (> 5) xs == [6,7,8,9,10]

word : Int -> String
word x = if mod x 2 == 0 then "boom" else "bang"

myFirstCombination : Bool
myFirstCombination = ["bang", "boom", "bang", "boom", "bang"] ==
  map word (filter (<= 5) xs)

export
allPass : Bool
allPass = myFirstMap && mySecondMap && myThirdMap && myFirstFold &&
  mySecondFold && myFirstScan && mySecondScan && myThirdScan &&
  myFirstFilter && mySecondFilter && myFirstCombination
