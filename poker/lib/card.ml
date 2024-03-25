type suit =
  | Clubs
  | Spades
  | Hearts
  | Diamonds

type rank =
  | Two
  | Three
  | Four
  | Five
  | Six
  | Seven
  | Eight
  | Nine
  | Ten
  | Jack
  | Queen
  | King
  | Ace

type t = {
  suit : suit;
  rank : rank;
}

(** [int_of_rank] converts a rank in to an integer from 2 to 14 for the purpose
    of comparing ranks more easily *)
let int_of_rank = function
  | Two -> 2
  | Three -> 3
  | Four -> 4
  | Five -> 5
  | Six -> 6
  | Seven -> 7
  | Eight -> 8
  | Nine -> 9
  | Ten -> 10
  | Jack -> 11
  | Queen -> 12
  | King -> 13
  | Ace -> 14

let compare c1 c2 = Int.compare (int_of_rank c1.rank) (int_of_rank c2.rank)

let string_of_card c =
  let st =
    (fun x ->
      match x.suit with
      | Clubs -> "Clubs"
      | Spades -> "Spades"
      | Hearts -> "Hearts"
      | Diamonds -> "Diamonds")
      c
  in
  let rnk =
    (fun x ->
      match x.rank with
      | Two -> "Two"
      | Three -> "Three"
      | Four -> "Four"
      | Five -> "Five"
      | Six -> "Six"
      | Seven -> "Seven"
      | Eight -> "Eight"
      | Nine -> "Nine"
      | Ten -> "Ten"
      | Jack -> "Jack"
      | Queen -> "Queen"
      | King -> "King"
      | Ace -> "Ace")
      c
  in
  rnk ^ " of " ^ st
