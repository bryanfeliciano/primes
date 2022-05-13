module Main where

import Primes

main :: IO ()
main = do
    quickCheck prop_ValidPrimesOnly
    -- quickCheckWith StdArgs { maxSuccess = 1000} prop_primesArePrime
    -- quickCheckWith StdArgs { maxSuccess = 1000} prop_nonPrimesAreComposite
