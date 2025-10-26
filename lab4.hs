module Main where

product5 :: Int -> Int -> Int -> Int -> Int -> Int
product5 a b c d e = a * b * c * d * e

main :: IO ()
main = do

    let result1 = product5 1 2 3 4 5
    putStrLn $ "Prod (1 2 3 4 5): " ++ show result1

    let f1 = product5 2
    let result2 = f1 2 3 4 5
    putStrLn $ "Prod (2(2 3 4 5)): " ++ show result2

    let f2 = product5 2 3
    let result3 = f2 3 4 5
    putStrLn $ "Prod (2 3(3 4 5)): " ++ show result3

    let f3 = product5 2 3 4
    let f4 = f3 5
    let result4 = f4 6
    putStrLn $ "Prod (2 3 4 (5 (6))): " ++ show result4

