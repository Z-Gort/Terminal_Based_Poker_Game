type t = {
  players : Player.t list;
  deck : Card.t list;
  flop : Card.t list;
  pot : int;
  current_bet : int;
  last_raise : Player.t;
}

(** Represents a game with (6) players with a list of integers corresponding to
    the number of the player in the order that they will be dealt cards (game
    begins with player 1 being dealt a card first), a deck, the flop (cards
    shared among players), and the pot*)

(* type action = | Check | Bet | Fold (** Represents the action a player can
   make during the betting round *) *)

val newgame : t
(** [newgame] is a brand new game with two cards dealt to every player*)

val player_bet : t -> Player.t -> int -> t
(** [player_bet gm p n] is the the same as the game [gm] but with with player
    [p] having bet [n]. If [p] raises, they are [gm.last_raise] is updated to
    record that fact. *)

val bet_round : t -> int list -> t
