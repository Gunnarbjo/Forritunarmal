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
