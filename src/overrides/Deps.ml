type t

external _0 : unit -> t = "Array" [@@bs.new]

external _1 : 'a -> t = "of" [@@bs.val] [@@bs.scope "Array"]

external _2 : 'a -> 'b -> t = "of" [@@bs.val] [@@bs.scope "Array"]

external _3 : 'a -> 'b -> 'c -> t = "of" [@@bs.val] [@@bs.scope "Array"]

external _4 : 'a -> 'b -> 'c -> 'd -> t = "of" [@@bs.val] [@@bs.scope "Array"]

external _5 : 'a -> 'b -> 'c -> 'd -> 'e -> t = "of"
  [@@bs.val] [@@bs.scope "Array"]

external _6 : 'a -> 'b -> 'c -> 'd -> 'e -> 'f -> t = "of"
  [@@bs.val] [@@bs.scope "Array"]

external _7 : 'a -> 'b -> 'c -> 'd -> 'e -> 'f -> 'g -> t = "of"
  [@@bs.val] [@@bs.scope "Array"]

external tup_2 : 'a * 'b -> t = "%identity"

external tup_3 : 'a * 'b * 'c -> t = "%identity"

external tup_4 : 'a * 'b * 'c * 'd -> t = "%identity"

external tup_5 : 'a * 'b * 'c * 'd * 'e -> t = "%identity"

external tup_6 : 'a * 'b * 'c * 'd * 'e * 'f -> t = "%identity"

external tup_7 : 'a * 'b * 'c * 'd * 'e * 'f * 'g -> t = "%identity"

external arr : 'a array -> t = "%identity"

external unsafe_any_tup : 'a -> t = "%identity"

external no_dep : t = "#undefined"
