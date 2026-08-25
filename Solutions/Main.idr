module Solutions.Main

import Solutions.Arithmetic
import Solutions.Boolean
import Solutions.Equality
import Solutions.HigherOrderFunctions
import Solutions.ListComprehensions
import Solutions.Lists
import Solutions.Misc
import Solutions.Ranges
import Solutions.Tuples

combinedAllPass : Bool
combinedAllPass = Solutions.Arithmetic.allPass &&
  Solutions.Boolean.allPass &&
  Solutions.Equality.allPass &&
  Solutions.HigherOrderFunctions.allPass &&
  Solutions.ListComprehensions.allPass &&
  Solutions.Lists.allPass &&
  Solutions.Misc.allPass &&
  Solutions.Ranges.allPass &&
  Solutions.Tuples.allPass

main : IO ()
main = putStrLn $ if combinedAllPass
  then "All Idris 2 koan solutions pass."
  else "An Idris 2 koan solution is false."
