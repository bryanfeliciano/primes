module Main where

import Primes

main :: IO ()
main = do
  quickCheck prop_validPrimesOnly
  quickCheckWith stdArgs { maxSuccess = 1000} prop_primesArePrime
  quickCheckWith stdArgs { maxSuccess = 1000} prop_nonPrimesAreComposite
  quickCheck prop_factorsSumToOriginal
  quickCheck prop_allFactorsPrime 

