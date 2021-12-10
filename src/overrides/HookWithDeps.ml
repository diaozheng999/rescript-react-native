external useEffect :
  ((unit -> (unit -> unit) option)[@bs.uncurry]) -> Deps.t -> unit = "useEffect"
  [@@bs.module "react"]

external useLayoutEffect :
  ((unit -> (unit -> unit) option)[@bs.uncurry]) -> Deps.t -> unit
  = "useLayoutEffect"
  [@@bs.module "react"]

external useMemo : ((unit -> 'a)[@bs.uncurry]) -> Deps.t -> 'a = "useMemo"
  [@@bs.module "react"]

external useCallback :
  (('a -> 'b)[@bs.uncurry]) -> Deps.t -> ('a, 'b) React.callback = "useCallback"
  [@@bs.module "react"]
