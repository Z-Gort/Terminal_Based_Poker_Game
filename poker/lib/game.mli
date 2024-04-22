type t = {
  players : (int * Hand.t) list;
  deck : Card.t list;
  pot : int;
}
(** Represents a game with (6) players with a list of integers corresponding to
    the number of the player in the order that they will be dealt cards (game
    begins with player 1 being dealt a card first), a deck, and the hands of the
    players (order of hands corresponds with order of players) *)

val newgame : t
(** [newgame] is a brand new game with two cards dealt to every player*)

(* Ideas for the future: create a player compilation unit that so that players
   are represented as type Player.t rather than (int * Hand.t) list. *)
