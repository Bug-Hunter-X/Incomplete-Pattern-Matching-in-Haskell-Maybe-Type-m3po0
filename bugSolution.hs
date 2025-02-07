The solution is to add a case to handle `Nothing`. Here are two approaches:

**1. Using a default value:**
```haskell
myFunction :: Maybe Int -> Int
myFunction (Just x) = x * 2
myFunction Nothing = 0 -- Default value if Nothing
```

This version returns 0 if the input is `Nothing`. You can replace 0 with any other appropriate default value.

**2. Using Maybe monad:**
```haskell
myFunction :: Maybe Int -> Maybe Int
myFunction (Just x) = Just (x * 2)
myFunction Nothing = Nothing
```
This version preserves the `Maybe` type, allowing for more robust error handling throughout your application.  The calling function must then handle the potential `Nothing` value.