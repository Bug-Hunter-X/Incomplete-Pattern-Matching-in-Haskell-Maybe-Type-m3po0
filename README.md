# Incomplete Pattern Matching in Haskell Maybe Type

This repository demonstrates a common error in Haskell: forgetting to handle the `Nothing` case when pattern matching on a `Maybe` type.  The `bug.hs` file contains the erroneous code, while `bugSolution.hs` provides the corrected version.

This error can be tricky to spot because the type system doesn't immediately flag it as an issue.  The function compiles successfully but throws a runtime exception when called with `Nothing`. 

The solution involves explicitly handling the `Nothing` case, either by using a default value or by propagating the `Nothing` using a monad.
