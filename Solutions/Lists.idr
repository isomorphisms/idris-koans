module Solutions.Lists

import Data.List
import Data.Stream
import Data.Vect

nats : List Integer
nats = [0,1,2,3,4,5,6,7,8,9]

odds : List Int
odds = [1,3,5,7,9]

evens : List Int
evens = [2,4,6,8]

zero : Int
zero = 0

zeroOddsEvens : Bool
zeroOddsEvens = [zero] ++ odds ++ evens == [0,1,3,5,7,9,2,4,6,8]

headOList : Bool
headOList = 5 == Data.Vect.head [5,4,3,2,1]

tailOList : Bool
tailOList = [1,2,3,4,5] == Data.Vect.tail [0,1,2,3,4,5]

lastOList : Bool
lastOList = 1 == Data.Vect.last [5,4,3,2,1]

initOList : Bool
initOList = [1,2,3,4,5] == Data.Vect.init [1,2,3,4,5,6]

lengthOList : Bool
lengthOList = 5 == Prelude.Types.List.length [1,2,3,4,5]

reverseTheList : Bool
reverseTheList = [5,4,3,2,1] == Prelude.Types.List.reverse [1,2,3,4,5]

first3 : Bool
first3 = [1,2,3] == Data.List.take 3 [1..10]

drop3 : Bool
drop3 = [4,5,6,7,8,9,10] == Data.List.drop 3 [1..10]

countAllTheNumbers : Bool
countAllTheNumbers = 55 == sum [1..10]

timesAllTheNumbers : Bool
timesAllTheNumbers = 3628800 == product [1..10]

elementOrNot : Bool
elementOrNot = elem 4 (the (List Integer) [1,2,3,4,5]) == True

stopPete : Bool
stopPete = Prelude.take 4 (Data.Stream.repeat 3) == [3,3,3,3]

export
allPass : Bool
allPass = zeroOddsEvens && headOList && tailOList && lastOList &&
  initOList && lengthOList && reverseTheList && first3 && drop3 &&
  countAllTheNumbers && timesAllTheNumbers && elementOrNot && stopPete
