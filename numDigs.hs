numDigs x 
  | x < 10 = 1
  | otherwise = 1 + numDigs (x `div` 10)
