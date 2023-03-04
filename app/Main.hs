module Main (main) where

import HaskellCliStarter (projectName)


main :: IO ()
main = putStrLn ("Executable for " ++ projectName)
