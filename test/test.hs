{-# LANGUAGE DataKinds #-}
{-# OPTIONS_GHC -Wall #-}

module Main where

import NumHask.Prelude
import NumHask.Laws
import NumHask.Array
import NumHask.Array.Accelerate

import Test.DocTest
import Test.Tasty
       (TestTree, defaultMain, testGroup, localOption)
import Test.Tasty.QuickCheck

main :: IO ()
main = do
  putStrLn ("NumHask.Array.Accelerate DocTest" :: Text)
  doctest ["src/NumHask/Array/Accelerate.hs"]
