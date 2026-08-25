||| Exercises on Boolean operations.
module Koans.Boolean

logicalAND : Bool
logicalAND = True && ?fillme1 == True

logicalOR : Bool
logicalOR = False || ?fillme2 == False

logicalNOT : Bool
logicalNOT = not ?fillme3 == False

logicalPredicate : Bool
logicalPredicate = (not (?fillme4 && True) || (?fillme5 && False)) == True

export
allPass : Bool
allPass = logicalAND && logicalOR && logicalNOT && logicalPredicate

main : IO ()
main = printLn allPass
