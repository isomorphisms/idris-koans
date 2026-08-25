module Solutions.Boolean

logicalAND : Bool
logicalAND = True && True == True

logicalOR : Bool
logicalOR = False || False == False

logicalNOT : Bool
logicalNOT = not True == False

logicalPredicate : Bool
logicalPredicate = (not (False && True) || (False && False)) == True

export
allPass : Bool
allPass = logicalAND && logicalOR && logicalNOT && logicalPredicate
