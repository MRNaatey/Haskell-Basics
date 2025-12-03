double :: Int -> Int -> Int
double x y = x * y * 2
 
main :: IO ()
main = do
 print $ double 8 9
--output is = 144 
