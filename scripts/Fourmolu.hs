module Main (main) where

import System.Process (system)

main :: IO ()
main = system "fourmolu --mode check app src test scripts" >>= exitWith
