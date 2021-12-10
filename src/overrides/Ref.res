include ReactNative.Ref

@module("react")
external useRef : () => t<'elt> = "useRef"

@get
external currentValue : t<'a> => Js.nullable<'a> = "current"
