module Development.Starter.LibSpec (spec) where

import Development.Starter.Lib (projectName)

import Hedgehog

spec :: Property
spec = property $ do
  projectName === "haskell-cli-starter"
