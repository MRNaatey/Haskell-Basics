
------------------------------------------------------------
-- HC1T1 – Task 1: Function Composition
------------------------------------------------------------
double :: Int -> Int
double x = x * 2
-- increment increases a number by 1
increment :: Int -> Int
increment x = x + 1
-- doubleThenIncrement applies double first and then increment
doubleThenIncrement :: Int -> Int
doubleThenIncrement x = increment (double x)
main :: IO()
main = do
  print (doubleThenIncrement 6 )
  -- the output is 13

------------------------------------------------------------
-- HC1T2 – Task 2: Pure Function Example
------------------------------------------------------------
circleArea :: Double -> Double
circleArea r = pi * r^ 2

main :: IO ()
main = do
 print (circleArea 5)
 --the output is 78.53981633974483
------------------------------------------------------------
-- HC1T3 – Task 3: Checking if a Number is Greater than 18
------------------------------------------------------------

greaterThan18 :: Int -> Bool
greaterThan18 x = x > 18

main :: IO ()
main = do
  print (greaterThan18 30)
  -- the output is True
------------------------------------------------------------
-- HC1T4 – Task 4: Composing a Function to Process Player Data
------------------------------------------------------------
import Data.List (sortBy)
import Data.Ord (comparing)

extractPlayers :: [(String, Int)] -> [String]
extractPlayers players = [name | (name, _) <- players]

sortByScore :: [(String, Int)] -> [(String, Int)]
sortByScore players = sortBy (comparing (negate . snd)) players

topThree :: [(String, Int)] -> [(String, Int)]
topThree players = take 3 players

getTopThreePlayers :: [(String, Int)] -> [String]
getTopThreePlayers = extractPlayers . topThree . sortByScore

main :: IO ()
main = do
  let playerData = [ ("Harding",50), ("Prince",75), ("Calvin",100)  , ("Diana",90) ]
  print (getTopThreePlayers playerData)


------------------------------------------------------------
-- HC1T5 – Task 5: Laziness in Haskell
------------------------------------------------------------
infiniteNumbers :: [Int]
infiniteNumbers = [1..]

firstNNumbers :: Int -> [Int]
firstNNumbers n = take n infiniteNumbers

main :: IO ()
main = do
  let n = 9
  print (firstNNumbers n)
--the output is [1,2,3,4,5,6,7,8,9]
------------------------------------------------------------
-- HC1T6 – Task 6: Using Type Signatures
------------------------------------------------------------
addNumbers :: Int -> Int -> Int
addNumbers x y = x + y

main :: IO ()
main = do
  print (addNumbers 7 8 )
  -- the output is 15
------------------------------------------------------------
-- HC1T7 – Task 7: Converting Fahrenheit to Celsius
------------------------------------------------------------
fToC :: Double -> Double
fToC x = (x - 32) * 5 / 9

main :: IO ()
main = do
  print (fToC 122 )
  --the output is 50.0

------------------------------------------------------------
-- HC1T8 – Task 8: Higher-Order Functions
------------------------------------------------------------
incrementBy8 :: Int -> Int
incrementBy8 x = x + 8

applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

main :: IO ()
main = do
  print (applyTwice incrementBy8 12)
  -- the output is 28

