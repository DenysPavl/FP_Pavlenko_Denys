
guess :: Int -> Int -> IO ()
guess low high
  | low > high = putStrLn "Error"
  | low == high = putStrLn $ "Ваше число: " ++ show (low-1)
  | otherwise = do
      let mid = (low + high) `div` 2
      putStrLn $ "Задумане менше, ніж " ++ show mid ++ "? (Yes/No)"
      ans <- getLine
      if ans == "Yes" || ans == "yes"
        then guess low mid
        else guess (mid + 1) high

main :: IO ()
main = do
  putStrLn "Задумайте число від 0 до 99."
  guess 0 99
