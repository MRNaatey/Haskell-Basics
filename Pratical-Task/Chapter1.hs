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
