module Main (main) where

import HaskellCliStarter (projectName)


main :: IO ()
main = putTextLn ("Tests for " <> projectName)
