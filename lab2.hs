module Main where

type Number = Int
type Text = String
type Flag = Bool
type Pair a = (a, a)
type ListOf a = [a]
type Person = (Text, Number)

sumPair :: Pair Number -> Number
sumPair (x, y) = x + y

--Класс Студент
data Student = Student {
    name  :: Text,
    age   :: Number,
    group :: Text,
    grade :: Double
} deriving (Show)

printStudentInfo :: Student -> IO ()
printStudentInfo (Student { name = n, age = a, group = g, grade = gr }) = do
    putStrLn $ "Student name: " ++ n
    putStrLn $ "Age: " ++ show a
    putStrLn $ "Group: " ++ g
    putStrLn $ "Average grade: " ++ show gr

isExcellent :: Student -> Bool
isExcellent student = grade student >= 90

main :: IO ()
main = do
    let person :: Person; person = ("Denys", 21)
    let numbers :: ListOf Number; numbers = [1, 2, 3, 4, 5]
    let pair :: Pair Number; pair = (10, 15)
    let student1 = Student { name = "Denys Pavlenko", age = 20, group = "PP-42", grade = 92.5 }
    let student2 = Student { name = "Olha Ivanenko", age = 19, group = "PP-41", grade = 8.0 }

    putStrLn ("Person: " ++ show person)
    putStrLn ""
    putStrLn ("Sum of pair: " ++ show (sumPair pair))
    putStrLn ""
    putStrLn ("List of numbers: " ++ show numbers)
    putStrLn ""
    printStudentInfo student1
    putStrLn $ "Is excellent student? " ++ show (isExcellent student1)
    putStrLn ""
    printStudentInfo student2
    putStrLn $ "Is excellent student? " ++ show (isExcellent student2)
