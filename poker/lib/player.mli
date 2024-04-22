type ptype =
  | User
  | Bot of int
      (** [ptype] is the type that represents a player type, distinguishing bots
          from the user. Bot carries an int to represent which betting logit it
          uses. *)

type t = {
  player_type : ptype;
  hand : Hand.t;
  chips : int;
}
(** Player.t represents a poker player with a [player_type] that represents
    their status as either a particular bot or the user, a [hand] representing
    their hand, and [chips] which represents how many chips they can use to bet
    with. *)

val default_chips : int
(** [default_chips] is the default number of chips that players start the game
    with*)

val new_user : t
(** [new_user] is a brand new player with [default_chips] chips and an empty
    hand*)

val new_bot : int -> t
(** [new_bot i] is a new player with player_type Bot i, [default_chips] chips
    and an empty hand *)

val subtract_chips : t -> int -> t
(** [subtract_chips p n] subtracts [n] from the chips of player [p]. *)

val add_chips : t -> int -> t
(** [add_chips p n] adds [n] chips to those of player [p]. *)

val deal_card : t -> Card.t -> t
(** [deal_card p c] adds card [c] to player [p]'s hand *)
