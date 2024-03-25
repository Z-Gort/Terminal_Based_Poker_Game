type t = Card.t list
(** AF: a hand is represented by a list of cards in any orde. RI: all cards in a
    hand are different and the size of a hand can never be greater than 5 cards *)

let empty = []

let add c lst =
  match lst with
  | [] -> c :: []
  | v -> v @ [ c ]

let compare h1 h2 =
  match (h1, h2) with
  | _ -> 0
(* currently treats all hands as equal, needs to be fully implemented *)

let string_of_hand hnd =
  let rec build str lst =
    match lst with
    | [] -> str
    | h :: t -> build (str ^ Card.string_of_card h ^ "\n") t
  in
  build "" hnd
