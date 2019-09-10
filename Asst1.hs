{- Name: <Caroline shen, Mikal Hayden-Gates, Ari Benkov>
   File: Asst1.hs
   Desc: CS245, Assignment 1 (Style Resubmission)
-}

module Asst1 where

doNothing :: a -> a
-- returns the original input
doNothing x = x

add1 :: Integer -> Integer
-- takes an Integer and adds 1 to it
add1 x = x + 1

always0 :: Integer -> Integer
-- takes a number	and	always returns 0
always0 x = 0

sub :: Integer -> Integer -> Integer
--  takes	two	numbers	and	subtracts	them
sub x y = x - y

addmult :: Integer -> Integer -> Integer -> Integer
-- adding together the first two numbers and multiply by the third
addmult p q r = (p + q) * r

myAbs :: Integer -> Integer
-- takes an integer and return the absolute value of that number
myAbs n
 |n >= 0    = n
 |otherwise = (-n)

pushOut :: Integer -> Integer
-- takes	a	number	and	returns	the	number	that	is	one	 step	further	from	0
pushOut n
  |n == 0   = n
  |n > 0    = n + 1
  |n < 0    = n - 1

greet :: String -> String
-- takes a stirng and append "Hi " to the beginning
greet x = "Hi " ++ x

greet2 :: String -> String
-- takes a stirng and append "Hi " to the beginning, in the case where x is null,
-- returns "Hi there"
greet2 x
  |null x    = "Hi there"
  |otherwise = "Hi " ++ x

makeAs :: Integer -> String
-- takes in an integer and return a string with that many a's
makeAs 0 = ""
makeAs n = "a" ++ makeAs (n-1)

{- 13. makeAs 3 = "a" ++ makeAs 2
                = "a" ++ "a" ++ makeAs 1
                = "a" ++ "a" ++ "a" ++ makeAs 0
                = "a" ++ "a" ++ "a" ++ ""
                = "aaa"
-}

twiceAs :: Integer -> String
-- takes in an integer and return a string with twice that many a's
twiceAs 0 = ""
twiceAs n = "aa" ++ twiceAs (n-1)

countDown :: Integer -> String
-- takes in an integer and returns string	containing	a	count	down to 1
-- from	the	number provided
countDown n
  |n <= 0    = "Too low"
  |n == 1    = "1 "
  |otherwise = (show n) ++ " " ++ countDown(n-1)

countUp :: Integer -> String
-- takes in an integer and returns string	containing	a	count	up from 1
-- to	the	number provided
countUp n
  |n == 1    = "1 "
  |n > 1     = countUp (n-1) ++ (show n) ++ " "
  |otherwise = "Too low"

triangle :: Integer -> Integer
-- takes an integer and return the sum from 1 to that number(inclusive).
triangle n
  |n == 1  = 1
  |n > 1   = n + triangle (n-1)
  |n < 0   = (triangle (abs n)) * (-1)

divides :: Integer -> Integer -> Bool
-- takes	 two	 numbers	 and	 returns	 a	 Boolean	 value
-- stating	whether	the	second	is	divisible	by	the	first
divides x y = y `mod` x == 0

hasNoDivisorsLessThan :: Integer -> Integer -> Bool
-- takes	two	numbers	and	returns whether	 or	 not	the first has	any
-- divisors greater	than	1	and	less	than	the second (not inclusive)
hasNoDivisorsLessThan n d
  |d <= 2          = True
  |divides (d-1) n = False
  |otherwise       = hasNoDivisorsLessThan n (d-1)

isPrime :: Integer -> Bool
-- takes an integer and return if the number is prime
isPrime n
  |n > 1     = hasNoDivisorsLessThan n n
  |otherwise = False
