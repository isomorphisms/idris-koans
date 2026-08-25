||| Exercises on lists and vectors.
module Koans.Lists

import Data.List
import Data.Stream
import Data.Vect

||| What is the type of this list?
nats : ?someType
nats = the (List Integer) [0,1,2,3,4,5,6,7,8,9]

odds : List Int
odds = [1,3,5,7,9]

evens : List Int
evens = [2,4,6,8]

zero : Int
zero = 0

zeroOddsEvens : Bool
zeroOddsEvens = ?fillme2 ++ odds ++ ?fillme3 == [0,1,3,5,7,9,2,4,6,8]

headOList : Bool
headOList = ?fillme4 == Data.Vect.head [5,4,3,2,1]

tailOList : Bool
tailOList = ?fillme5 == Data.Vect.tail [0,1,2,3,4,5]

lastOList : Bool
lastOList = ?fillme6 == Data.Vect.last [5,4,3,2,1]

initOList : Bool
initOList = ?fillme7 == Data.Vect.init [1,2,3,4,5,6]

lengthOList : Bool
lengthOList = ?fillme8 == Prelude.Types.List.length [1,2,3,4,5]

reverseTheList : Bool
reverseTheList = ?fillme9 == Prelude.Types.List.reverse [1,2,3,4,5]

first3 : Bool
first3 = ?fillme10 == Data.List.take 3 [1..10]

drop3 : Bool
drop3 = ?fillme11 == Data.List.drop 3 [1..10]

countAllTheNumbers : Bool
countAllTheNumbers = ?fillme12 == sum [1..10]

timesAllTheNumbers : Bool
timesAllTheNumbers = ?fillme13 == product [1..10]

elementOrNot : Bool
elementOrNot = elem 4 (the (List Integer) ?fillme14) == True

||| Make this function true by stopping the infinite stream.
stopPete : Bool
stopPete = ?fillme15 (Data.Stream.repeat 3) ==
  the (List Integer) [3,3,3,3]

export
allPass : Bool
allPass = zeroOddsEvens && headOList && tailOList && lastOList &&
  initOList && lengthOList && reverseTheList && first3 && drop3 &&
  countAllTheNumbers && timesAllTheNumbers && elementOrNot && stopPete

main : IO ()
main = printLn allPass
