let rec powerList i j =
  if i > j then [[]]
   x :: xs then 
      let ps = superset xs in
      ps @ List.map (fun ss -> x :: ss) ps
   ;;
powerList 2 4;; 