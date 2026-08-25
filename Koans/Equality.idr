||| Exercises on equality and ordering.
module Koans.Equality

equalityEq : Bool
equalityEq = ?fillme1 == True

equalityNeq : Bool
equalityNeq = ?fillme2 /= the Integer 3

equalityGeq : Bool
equalityGeq = ?fillme3 >= the Integer 4

equalityGtr : Bool
equalityGtr = ?fillme4 > the Integer 4

equalityLeq : Bool
equalityLeq = ?fillme5 <= the Integer 5

equalityLess : Bool
equalityLess = ?fillme6 < the Integer 6

export
allPass : Bool
allPass = equalityEq && equalityNeq && equalityGeq && equalityGtr &&
  equalityLeq && equalityLess

main : IO ()
main = printLn allPass
