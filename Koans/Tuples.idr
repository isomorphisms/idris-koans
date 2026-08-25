||| Exercises on pairs, vectors, and zipping.
module Koans.Tuples

import Data.Vect

firstPair : Bool
firstPair = ?fillme1 == fst ("First", "Pair")

secondPair : Bool
secondPair = ?fillme2 == snd ("Second", "Pair")

whatAmI : Vect 5 (Int, Bool)
whatAmI = ?fillme3

ws : Vect 5 String
ws = ["zip", "a", "dee", "doo", "dah"]

is : Vect 5 Int
is = ?fillme4

myFirstZip : Bool
myFirstZip = zip ws is == ?fillme5

whatIsMyResult : Bool
whatIsMyResult = ?fillme6 == zipWith (+) is is

export
allPass : Bool
allPass = firstPair && secondPair && myFirstZip && whatIsMyResult

main : IO ()
main = printLn allPass
