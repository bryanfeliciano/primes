module Primes where

import Data.Maybe

sieve :: [Int] -> [Int]
sieve [] = []
sieve (nextPrime:rest) = nextPrime : sieve noFactors
   where
       noFactors = filter (not . (== 0) . (`mod` nextPrime)) rest

primes :: [Int]
primes = sieve [2 .. 10000]

isPrime :: Int -> Maybe Bool
isPrime n 
        | n < 0 = Nothing
        | n >= length primes = Nothing
        | otherwise = Just (n `elem` primes)

prop_ValidPrimesOnly val = if val < 0 || val >= length primes
                           then result == Nothing
                           else isJust result
    where
        result = isPrime val

prop_primesArePrime val = if result == Just True
                          then length divisors == 0
                          else True