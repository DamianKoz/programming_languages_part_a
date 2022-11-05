(* fun sum_list (ls : int*int*int) = 
    if null ls
    then 0
    else hd ls + sum_list(tl ls) *)

fun date_to_list(date : int*int*int ) = [#1 date, #2 date, #3 date]

fun is_older(date1 : int*int*int, date2 : int*int*int) =   
    let
      val d1 = #1 date1 + #2 date1 + #3 date1
      val d2 = #1 date2 + #2 date2 + #3 date2
    in
      d1 < d2
    end

fun number_in_month(dates : (int*int*int) list, month : int) =
    if null dates 
    then 0 
    else if # 2 (hd dates) = month
    then 1 + number_in_month(tl dates, month)
    else number_in_month(tl dates, month)
     

 (* val cdate = date_to_list(ls) *)
    (* date2 = date_to_list(ls2) *)
    (* if sum_list(date) < sum_list(date2)
    then true
    else false *)