double :: Int -> Int -> Int
double x y = x * y * 2
 
main :: IO ()
main = do
 print $ double 8 9
--output is = 144 

increment :: Int -> Int
increment x = x + 1

main :: IO ()
main = do
 print $ increment 5
 --output is = 6

double :: Int -> Int
double x = x * 2

increment :: Int -> Int
increment x = x + 1

doubleThenincrement :: Int -> Int
doubleThenincrement x = increment (double x)
  where 
    double n = n * 2
    increment n = n + 1
  
main :: IO ()
main = do
 print $ doubleThenincrement 6
 --output is 13

circleArea :: Double -> Double
circleArea r = area
  where
    area = pi * r * r

main :: IO ()
main = do
  print (circleArea 9)
  --output is = 254.46900494077323

greaterThan18 :: Int -> Bool
greaterThan18 x = x > 18

main :: IO()
main = do
 print (greaterThan18 17)
 --output is = false
 import Data.List (sortBy)
import Data.Ord (comparing)

-- Extract player names from a list of (name, score) tuples
extractPlayers :: [(String, Int)] -> [String]
extractPlayers players = [name | (name, _) <- players]

-- Sort the list of players by score in descending order
sortByScore :: [(String, Int)] -> [(String, Int)]
sortByScore players = sortBy (comparing (negate . snd)) players

-- Return the top three players (name and score)
topThree :: [(String, Int)] -> [(String, Int)]
topThree players = take 3 players

-- Compose all functions to get the top three player names
getTopThreePlayers :: [(String, Int)] -> [String]
getTopThreePlayers = extractPlayers . topThree . sortByScore

-- Main function to test getTopThreePlayers
main :: IO ()
main = do
  let playerData = [("Harding", 50), ("Prince", 75), ("Calvin", 100), ("Diana", 90)]
  print (getTopThreePlayers playerData)  
  --output is = ["Calvin","Diana","Prince"]
 
 --HCIT5 create a function that extract the first x terms from an infinite list
giveMe :: Int -> [Int]
giveMe x = take x [1..]

main :: IO ()
main = do
  print (giveMe 7) 
  -- output is = [1,2,3,4,5,6,7]
  
 -- HCIT 6 Takes two integers and returns their sum
addNumbers :: Int -> Int -> Int
addNumbers x y = x + y

main :: IO ()
main = do
 print (addNumbers 19 17)
-- output is = 36
-- HC1T7 A function that takes the temperature in Fahrenheit and returns it in Celsius
fToC x = (x - 32) * 5 / 9

main :: IO ()
main = do 
 print (fToC 212)
 --output is = 100.00
 --HC1T8 applytwice Increment function (adds 8)
increment :: Int -> Int
increment x = x + 8

-- applyTwice applies a function twice to a value
applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

main :: IO ()
main = do
  print (applyTwice increment 5)  
  --output is = 21





