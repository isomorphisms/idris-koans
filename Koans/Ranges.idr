||| Exercises on ranges.
module Koans.Ranges

rangeNums : Bool
rangeNums = ?fillme1 == [1..13]

stepUp : Bool
stepUp = ?fillme2 == [3,6..20]

stepDown : Bool
stepDown = ?fillme3 == [20,17..1]

||| Use a function to take the first five elements of the infinite range.
stopMe : Bool
stopMe = ?fillme4 [1..] == [1,2,3,4,5]

export
allPass : Bool
allPass = rangeNums && stepUp && stepDown && stopMe

main : IO ()
main = printLn allPass
