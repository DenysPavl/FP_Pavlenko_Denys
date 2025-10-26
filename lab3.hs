module Main where

import Data.IORef
import Control.Monad (replicateM_)

makeCounter :: IO (IO Int)
makeCounter = do
    counter <- newIORef 0   -- створюємо змінну-лічильник зі значенням 0
    let increment = do
            modifyIORef counter (+1)     -- збільшуємо значення на 1
            readIORef counter             -- повертаємо поточне значення
    return increment

main :: IO ()
main = do
    putStrLn "Counter"
    counter <- makeCounter
    
    replicateM_ 10 $ do
        count <- counter
        print count
