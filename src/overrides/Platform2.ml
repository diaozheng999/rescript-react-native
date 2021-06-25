type os = [ `android | `ios ]

type react_native_version = { major : int; minor : int; patch : int }

type ui_mode_android = [ `car | `desk | `normal | `tv | `watch | `unknown ]

type user_interface_idiom_ios =
  [ `unspecified | `phone | `pad | `tv | `carPlay | `mac ]

type +'a constant

external isTesting : 'a constant -> bool = "isTesting" [@@bs.get]

external reactNativeVersion : 'a constant -> react_native_version
  = "reactNativeVersion"
  [@@bs.get]

external version : [< `android ] constant -> int = "Version" [@@bs.get]

external release : [< `android ] constant -> string = "Release" [@@bs.get]

external serial : [< `android ] constant -> string = "Serial" [@@bs.get]

external model : [< `android ] constant -> string = "Model" [@@bs.get]

external brand : [< `android ] constant -> string = "Brand" [@@bs.get]

external manufacturer : [< `android ] constant -> string = "Manufacturer"
  [@@bs.get]

external serverHost : [< `android ] constant -> string option = "ServerHost"
  [@@bs.get]

external uiMode : [< `android ] constant -> string = "uiMode" [@@bs.get]

external forceTouchAvailable : [< `ios ] constant -> bool
  = "forceTouchAvailable"
  [@@bs.get]

external interfaceIdiom : [< `ios ] constant -> user_interface_idiom_ios
  = "interfaceIdiom"
  [@@bs.get]

external osVersion : [< `ios ] constant -> string = "osVersion" [@@bs.get]

external systemName : [< `ios ] constant -> string = "systemName" [@@bs.get]

external constants : ('a[@bs.ignore]) -> 'a constant = "constants"
  [@@bs.module "react-native"] [@@bs.scope "Platform"]

external os : os = "OS" [@@bs.module "react-native"] [@@bs.scope "Platform"]
