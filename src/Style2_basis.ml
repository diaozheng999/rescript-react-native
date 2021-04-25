module type Sig = sig
  type +'a t

  type +'a style = 'a t

  type abs_style

  type +'a style_prop = abs_style -> 'a style

  external asStyle : 'a Js.t -> abs_style = "%identity"

  external unsafe : 'a style -> ReactNative.Style.t = "%identity"

  external createStyleSheet : 'a -> 'a = "create"
    [@@bs.module "react-native"] [@@bs.scope "StyleSheet"]

  val make : unit -> abs_style

  val swap : ('a -> 'b -> 'c) -> 'b -> 'a -> 'c

  val compile : 'a style_prop list -> 'a style

  val compose : 'a style -> 'a style -> 'a style

  val composeWith : ?base:'a style -> 'a style -> 'a style

  external dp : float -> ReactNative.Style.size = "%identity"

  val pct : float -> ReactNative.Style.size

  module Infix : sig
    val ( ^ ) : 'a style -> 'a style -> 'a style
  end
end

type +'a t

type +'a style = 'a t

type abs_style

type +'a style_prop = abs_style -> 'a style

external asStyle : 'a Js.t -> abs_style = "%identity"

external asRNStyle : abs_style -> 'a t = "%identity"

external unsafe : 'a t -> ReactNative.Style.t = "%identity"

external createStyleSheet : 'a -> 'a = "create"
  [@@bs.module "react-native"] [@@bs.scope "StyleSheet"]

external ofArray : 'a t array -> 'a t = "%identity"

external dp : float -> ReactNative.Style.size = "%identity"

let pct = ReactNative.Style.pct

let make () = Js.Obj.empty () |> asStyle

let swap f a b = f b a

let compile (l : 'a style_prop list) : 'a t =
  let abs_style = make () in
  let () = Js.List.iter (fun [@bs] f -> f abs_style |> ignore) l in
  asRNStyle abs_style

let compose a b = [| a; b |] |> ofArray

let composeWith ?base style =
  match base with Some base -> compose base style | None -> style

module Infix = struct
  let ( ^ ) a b = compose a b
end
