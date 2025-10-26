module Main where

import Data.List

sum_func :: (a -> a -> a) -> [a] -> [(Int, Int)] -> [a]
sum_func op arr ranges = 
    [ if startIndex >= 0 && endIndex <= length arr && startIndex < endIndex
        then foldl1 op (take (endIndex - startIndex) (drop startIndex arr))
        else error "Invalid range!"
    | (startIndex, endIndex) <- ranges ]

main :: IO ()
main = do
    let arr = [2, 4, 7, 1, 9, 3, 5]
    let op = (+) :: Int -> Int -> Int

    let ranges1 = [(1, 4), (0, 5)]
    let result1 = sum_func op arr ranges1
    putStrLn $ "Result with ranges " ++ show ranges1 ++ ": " ++ show result1

    print" "

    let ranges2 = [(0, 100)]
    let result2 = sum_func op arr ranges2
    putStrLn $ "Result with ranges " ++ show ranges2 ++ ": " ++ show result2