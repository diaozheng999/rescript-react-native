include ReactNative.StyleSheet

external unsafeCreate : 'a -> 'a = "create"
  [@@bs.module "react-native"] [@@bs.scope "StyleSheet"]
