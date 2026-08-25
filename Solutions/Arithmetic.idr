module Solutions.Arithmetic

add : Bool
add = 40 + 32 == the Integer 72

multiply : Bool
multiply = 320 == 10 * the Integer 32

subtract : Bool
subtract = 1977 - 1974 == the Integer 3

division : Bool
division = div 26 13 == the Integer 2

parentheses : Bool
parentheses = 520 == 32 * 10 + 40 * the Integer 5

export
allPass : Bool
allPass = add && multiply && subtract && division && parentheses
