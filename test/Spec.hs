module Main (main) where

import HaskellCliStarter (projectName)


main :: IO ()
main = putStrLn ("Tests for " ++ projectName)
