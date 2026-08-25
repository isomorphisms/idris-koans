||| Some simple arithmetic exercises.
module Koans.Arithmetic

||| There were 32 black-and-white episodes of Ivor the Engine and 72
||| episodes altogether. How many colour episodes were produced?
add : Bool
add = ?colour_episodes + 32 == the Integer 72

||| The black-and-white episodes were ten minutes long. How many minutes
||| would it take to watch all 32?
multiply : Bool
multiply = ?black_and_white_minutes == 10 * the Integer 32

||| The colour series first aired three years before 1977. In what year?
subtract : Bool
subtract = 1977 - ?first_colour_year == the Integer 3

||| Twenty-six rediscovered episodes formed two equal seasons. How many
||| episodes were in each season?
division : Bool
division = div 26 ?episodes_per_season == the Integer 2

||| There were 32 ten-minute episodes and 40 five-minute episodes.
||| How many minutes exist altogether?
parentheses : Bool
parentheses = ?total_minutes == 32 * 10 + 40 * the Integer 5

export
allPass : Bool
allPass = add && multiply && subtract && division && parentheses

main : IO ()
main = printLn allPass
