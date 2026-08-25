module Solutions.Equality

equalityEq : Bool
equalityEq = True == True

equalityNeq : Bool
equalityNeq = 4 /= the Integer 3

equalityGeq : Bool
equalityGeq = 4 >= the Integer 4

equalityGtr : Bool
equalityGtr = 5 > the Integer 4

equalityLeq : Bool
equalityLeq = 5 <= the Integer 5

equalityLess : Bool
equalityLess = 5 < the Integer 6

export
allPass : Bool
allPass = equalityEq && equalityNeq && equalityGeq && equalityGtr &&
  equalityLeq && equalityLess
