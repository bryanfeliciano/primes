module Main where

import Primes

main :: IO ()
main = do
    quickCheck prop_ValidPrimesOnly
