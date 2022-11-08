(*
Notkun: powerList i j
Fyrir: i, j eru heiltölur.
Gildi: Listi lista [x1;x2;...;xN] sem
inniheldur alla undirlista lista
allra heiltalna k þ.a. i<=k<=j,
í vaxandi röð. Ef i<=j þá er
útkoman allir undirlistar listans
[i;i+1;...;j].
Ef i>j þá er útkoman [[]].
*)

let rec powerList i j =
    if i > j
        then [[]]
    else
        List.map (fun x -> i::x) (powerList (i + 1) j) @ (powerList (i + 1) j)
;;
powerList 1 5;;
powerList 5 1;;
powerList 5 5;;
