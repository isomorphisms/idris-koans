-- | Some simple arithmetic exercises.
module Koans.Arithmetic

-- | There were 32 B/W Episodes of Ivor the Engine, and 72 episodes
-- were produced altogether. How many colour episodes were produced?
add : Bool
add = ?colour + 32 == 72

-- | B/W Episodes of Ivor the Engine were ten minutes long. If you
-- were to watch all the episodes in one sitting how many minutes
-- would it take?
multiply : Bool
multiply = ?b_w_duration == 10 * 32

-- | In what year did the Colourised version of Ivor the Engine first air?
subtract : Bool     
subtract = 1977 - ?inception == 3

-- | 26 B/W episodes of Ivor the Engine were discovered in a Pig shed
-- in 2010. There were two seasons. How many episodes per season were
-- there?
division : Bool
division = 26 / ?pigshed == 2

-- | There were 32 B/W episodes of ten minutes each, and 40 colour
-- episodes of five minutes each. How many minutes of Ivor the Engine
-- exist?
parentheses : Int
parentheses = ?answer

-- --------------------------------------------------------------------- [ EOF ]
