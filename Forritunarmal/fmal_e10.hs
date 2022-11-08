-- Once finished, this file can be compiled
-- and run using GHC and the following commands
-- on the command line:
--    ghc --make fmal_e10.hs
--    fmal_e10
{-
Use:   ...? partition a b x
Pre:   ...? a og b eru Samanburðar föll sem taka type a og skila boolian, x listi.
Value: ...? Tuple af þremur listum af a
Hints: The reader of this description needs
       to know what conditions are fulfilled
       by the values in each of the three
       lists in the triple returned.
-}
partition :: (a -> Bool) -> (a -> Bool) -> [a] -> ([a],[a],[a])
partition a b [] = ([],[],[])
partition a b (x:xs) =
    let
        (p1,p2,p3) = partition a b xs
    in
        if a x then
            (x:p1,p2,p3)
        else if b x then
            (p1,p2,x:p3)
        else
            (p1,x:p2,p3)
{-
Use:   ...? quicksort f x
Pre:   ...? f er fall sem skoðar tvö stök af type a og skila boolian, x er listi
Value: ...? Skilar röðuðum lista frá lægsta til hæsta
Hints: The reader of this description needs
       to know (among other things) what
       comparison operators are appropriate.
       For example can we use any or all of
       the following to sort numbers: (<),
       (>), (<=), and (>=)?
-}
quicksort :: (a -> a -> Bool) -> [a] -> [a]
quicksort (<) [] = []
quicksort (<) [x] = [x]
quicksort (<) (x:xs) =
    let
        (p1,p2,p3) = partition (<x) (x<) xs
    in
        quicksort (<) p1 ++ x:p2 ++ quicksort (<) p3

{-
Use:   ...? split x
Pre:   ...? x er listi af type a
Value: ...? Tuple af tvemur listum
-}
split :: [a] -> ([a],[a])
split [] = ([],[])
split [x] = ([x],[])
split (x1:x2:xs) =
    let
        (p1,p2) = split xs
    in
        (x1:p1,x2:p2)
{-
Use:   ...? merge f x1 x2
Pre:   ...? f er samanburðarfall sem tekur tvö stök af tegund a og skilar boolian, x1 og x2 eru listar af tegund a
Value: ...? raðaður listi af tegund a sem raðast eftir skilgreiningu falls f
Hints: The reader of this description needs
       to know (among other things) what
       comparison operators are appropriate.
       For example can we use any or all of
       the following to sort numbers: (<),
       (>), (<=), and (>=)?
-}
merge :: (a -> a -> Bool) -> [a] -> [a] -> [a]
merge (<) [] x = x
merge (<) x [] = x
merge (<) (x:xs) (y:ys) =
    if x<y then
        x : (merge (<) xs (y:ys))
    else
        y : (merge (<) (x:xs) ys)
{-
Use:   ...? mergesort f x
Pre:   ...? f er samanburðarfunction sem skilar boolian, x er listi af type a
Value: ...? Raðaður listi af type a eftir skilgreiningu falls f
Hints: The reader of this description needs
       to know (among other things) what
       comparison operators are appropriate.
       For example can we use any or all of
       the following to sort numbers: (<),
       (>), (<=), and (>=)?
-}
mergesort :: (a -> a -> Bool) -> [a] -> [a]
mergesort (<) [] = []
mergesort (<) [x] = [x]
mergesort (<) xs =
    let
        (p1,p2) = split xs
    in
      merge (<) (mergesort (<) p1)  (mergesort (<) p2)
{-
Use:   repeatList n x
Pre:   x is some list of type [a],
       n is an Int, n>=0.
Value: The list that results from concatenating
       x with itself n times.
Note:  Do not change this implementation.
-}
repeatList :: Int -> [a] -> [a]
repeatList 0 x = []
repeatList n x = x++(repeatList (n-1) x)
{-
Use:   main
Pre:   Nothing.
Post:  Some test results have been written
       to stdout.
Note:  You may modify this function if you
       wish to do more tests.
-}
main :: IO ()
main = do
    let s = repeatList 10 "abcde"
    print s
    print (quicksort (>) s)
    print (mergesort (<) s)

