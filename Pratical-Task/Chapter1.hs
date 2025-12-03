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






