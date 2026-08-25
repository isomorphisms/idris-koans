||| Exercises on list comprehensions.
module Koans.ListComprehensions

listCompZero : Bool
listCompZero = ?fillme1 == [x + x | x <- [1..5]]

||| Return the numbers divisible by four, doubled.
myFirstListComp : List Integer -> List Integer
myFirstListComp xs = ?fillme2

computeList : Bool
computeList = myFirstListComp [1..10] == [8,16]

||| Return the numbers between 20 and 100 divisible by nine.
divisibleByNine : List Integer
divisibleByNine = ?fillme3

||| Turn odd numbers into "bang" and even numbers into "boom".
boomBangs : List Integer -> List String
boomBangs xs = ?fillme4
  where
    transform : Integer -> String
    transform = ?fillme5

doBoomBangs : Bool
doBoomBangs = boomBangs [3,4,5,6,7] ==
  ["bang", "boom", "bang", "boom", "bang"]

divisibleByNinePasses : Bool
divisibleByNinePasses = divisibleByNine == [27,36,45,54,63,72,81,90,99]

export
allPass : Bool
allPass = listCompZero && computeList && doBoomBangs && divisibleByNinePasses

main : IO ()
main = printLn allPass
