module Main (main) where

import Development.Starter.App (App (..), runApp)
import Development.Starter.Lib (projectName)

import Options.Applicative

{-# ANN Options ("HLint: ignore Use newtype instead of data" :: String) #-}
data Options = Options {optVerbose :: !Bool}
  deriving (Show)

main :: IO ()
main = execParser options >>= runApp run

run :: App Options ()
run = do
  opts <- ask
  liftIO $ putTextLn ("Executable for " <> projectName <> ": " <> show opts)

options :: ParserInfo Options
options =
  info (parser <**> helper) $
    fullDesc
      <> progDesc "A sample CLI application"
      <> header "haskell-cli-starter - a sample cli application"

parser :: Parser Options
parser = Options <$> verboseOpt
  where
    verboseOpt =
      switch $
        long "verbose"
          <> short 'v'
          <> help "Verbose output?"
