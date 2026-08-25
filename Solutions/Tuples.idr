module Solutions.Tuples

import Data.Vect

firstPair : Bool
firstPair = "First" == fst ("First", "Pair")

secondPair : Bool
secondPair = "Pair" == snd ("Second", "Pair")

whatAmI : Vect 5 (Int, Bool)
whatAmI = [(1, True), (2, False), (3, True), (4, False), (5, True)]

ws : Vect 5 String
ws = ["zip", "a", "dee", "doo", "dah"]

is : Vect 5 Int
is = [1,2,3,4,5]

myFirstZip : Bool
myFirstZip = zip ws is ==
  [("zip",1), ("a",2), ("dee",3), ("doo",4), ("dah",5)]

whatIsMyResult : Bool
whatIsMyResult = [2,4,6,8,10] == zipWith (+) is is

export
allPass : Bool
allPass = firstPair && secondPair && myFirstZip && whatIsMyResult
