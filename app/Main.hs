module Main where

import Lib
import Parser
import Text.Parsec

main :: IO ()
main =  do
  putStrLn "Enter a mini program:"
  x <- getLine
  putStrLn $ catch $ parse programParseEOF "" x
