-- Y-комбінатор
y :: (a -> a) -> a
y f = f (y f)

-- Рекурсивна функція факторіала, записана через Y-комбінатор
fact :: Integer -> Integer
fact = y fact1
  where
    fact1 f n = if n == 0 then 1 else n * f (n - 1)

main :: IO ()
main = do
  putStrLn "Введіть число:"
  input <- getLine
  let n = read input :: Integer
  putStrLn $ "Факторіал числа " ++ show n ++ " = " ++ show (fact n)
