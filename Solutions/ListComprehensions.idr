module Solutions.ListComprehensions

listCompZero : Bool
listCompZero = [2,4,6,8,10] == [x + x | x <- [1..5]]

myFirstListComp : List Integer -> List Integer
myFirstListComp xs = [x * 2 | x <- xs, mod x 4 == 0]

computeList : Bool
computeList = myFirstListComp [1..10] == [8,16]

divisibleByNine : List Integer
divisibleByNine = [x | x <- [20..100], mod x 9 == 0]

boomBangs : List Integer -> List String
boomBangs xs = [transform x | x <- xs]
  where
    transform : Integer -> String
    transform x = if mod x 2 == 0 then "boom" else "bang"

doBoomBangs : Bool
doBoomBangs = boomBangs [3,4,5,6,7] ==
  ["bang", "boom", "bang", "boom", "bang"]

divisibleByNinePasses : Bool
divisibleByNinePasses = divisibleByNine == [27,36,45,54,63,72,81,90,99]

export
allPass : Bool
allPass = listCompZero && computeList && doBoomBangs && divisibleByNinePasses
