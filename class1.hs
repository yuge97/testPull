module Class1 where
  i = 5
  hello = "Hello"

  sayHello :: String
  sayHello = "Hello"

  add5 :: Integer -> Integer  --not necessary
  add5 x = x + 5

  plus :: Integer -> (Integer -> Integer)  --right associative
  {-this is a function that turns a Integer into
  a function of (Integer -> Integer)-}
  plus x y = x + y

  plus4 = plus 4

  length1 :: [a] -> Integer
  length1 [] = 0
  length1 [_:xs] = 1 + length1 xs
  -- : is right associative

  -- function application is left associative
  -- plus 10 20  means  (plus 10) 20
