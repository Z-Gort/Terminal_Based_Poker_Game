type 'a t
(** Represents the hand of a player, the two cards they are dealt plus the
    community cards on the flop. *)

val compare : Poker.Card.t t -> Poker.Card.t t -> int
(** [compare x y] returns a positive integer if [x] > [y], a negative integer if
    [x] < [y], and zero if [x] = [y]. *)
