module Chapter1 where

factorial n =
  let factorialIter n acc =
        if n == 0 then acc else factorialIter (n - 1) (n * acc)
  in  factorialIter n 1

fibonacci n =
  let fibonacciStep fstN fst snd =
        if fstN == n then fst else fibonacciStep (fstN + 1) snd (fst + snd)
  in  fibonacciStep 0 0 1

curry' f a b = f (a, b)

uncurry' f (a, b) = f a b
