module Solutions.Misc

smallOdds : List Integer
smallOdds = [x | x <- [1..20], mod x 2 == 1]

greeter : String -> String
greeter whom = "Hello to " ++ whom

export
allPass : Bool
allPass = smallOdds == [1,3,5,7,9,11,13,15,17,19] &&
  greeter "Idris 2" == "Hello to Idris 2"
