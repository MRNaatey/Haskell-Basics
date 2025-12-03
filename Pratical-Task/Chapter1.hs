import Data.List (sortBy)
import Data.Ord (comparing)

------------------------------------------------------------
-- HC1T1 – Task 1: Function Composition
------------------------------------------------------------

-- double multiplies a number by 2
double :: Int -> Int
double x = x * 2

-- increment increases a number by 1
increment :: Int -> Int
increment x = x + 1

-- doubleThenIncrement applies double first and then increment
doubleThenIncrement :: Int -> Int
doubleThenIncrement x = increment (double x)


------------------------------------------------------------
-- HC1T2 – Task 2: Pure Function Example
------------------------------------------------------------

circleArea :: Double -> Double
circleArea r = pi * r * r

------------------------------------------------------------
-- HC1T3 – Task 3: Checking if a Number is Greater than 18
------------------------------------------------------------

greaterThan18 :: Int -> Bool
greaterThan18 x = x > 18

------------------------------------------------------------
-- HC1T4 – Task 4: Composing a Function to Process Player Data
------------------------------------------------------------

extractPlayers :: [(String, Int)] -> [String]
extractPlayers players = [name | (name, _) <- players]

sortByScore :: [(String, Int)] -> [(String, Int)]
sortByScore players = sortBy (comparing (negate . snd)) players

topThree :: [(String, Int)] -> [(String, Int)]
topThree players = take 3 players

getTopThreePlayers :: [(String, Int)] -> [String]
getTopThreePlayers = extractPlayers . topThree . sortByScore

------------------------------------------------------------
-- HC1T5 – Task 5: Laziness in Haskell
------------------------------------------------------------

infiniteNumbers :: [Int]
infiniteNumbers = [1..]

firstNNumbers :: Int -> [Int]
firstNNumbers n = take n infiniteNumbers

------------------------------------------------------------
-- HC1T6 – Task 6: Using Type Signatures
------------------------------------------------------------

addNumbers :: Int -> Int -> Int
addNumbers x y = x + y

------------------------------------------------------------
-- HC1T7 – Task 7: Converting Fahrenheit to Celsius
------------------------------------------------------------

fToC :: Double -> Double
fToC x = (x - 32) * 5 / 9

------------------------------------------------------------
-- HC1T8 – Task 8: Higher-Order Functions
------------------------------------------------------------

incrementBy8 :: Int -> Int
incrementBy8 x = x + 8

applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

------------------------------------------------------------
-- Main function testing all tasks
------------------------------------------------------------

main :: IO ()
main = do
  -- HC1T1
  print (doubleThenIncrement 6)       

  -- HC1T2
  print (circleArea 9)                 

  -- HC1T3
  print (greaterThan18 17)            

  -- HC1T4
  let playerData = [("Harding",50),("Prince",75),("Calvin",100),("Diana",90)]
  print (getTopThreePlayers playerData)

  -- HC1T5
  print (firstNNumbers 7)              

  -- HC1T6
  print (addNumbers 19 17)             

  -- HC1T7
  print (fToC 212)                     

  -- HC1T8
  print (applyTwice incrementBy8 5)    
