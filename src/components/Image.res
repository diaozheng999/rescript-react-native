// generated by scripts/gen_component.js

include ReactNative.Image

module Compat = ReactNative.Image

@react.component @module("react-native")
external make: (
  ~ref: ref=?,
  // Image props
  ~accessibilityLabel: string=?,
  ~accessible: bool=?,
  ~blurRadius: float=?,
  ~capInsets: View.edgeInsets=?,
  ~defaultSource: DefaultSource.t=?,
  ~fadeDuration: float=?,
  ~loadingIndicatorSource: array<Source.t>=?,
  ~onError: errorEvent => unit=?,
  ~onLayout: Event.layoutEvent => unit=?,
  ~onLoad: imageLoadEvent => unit=?,
  ~onLoadEnd: unit => unit=?,
  ~onLoadStart: unit => unit=?,
  ~onPartialLoad: unit => unit=?,
  ~onProgress: progressEvent => unit=?,
  ~progressiveRenderingEnabled: bool=?,
  ~resizeMethod: resizeMethod=?,
  ~resizeMode: Style.resizeMode=?,
  ~source: Source.t,
  ~style: Style2.t<[< Style2.imageStyle]>=?,
  ~testID: string=?,
) => React.element = "Image"

type sizeError

@module("react-native") @scope("Image")
external getSize: (
  ~uri: string,
  ~success: (~width: float, ~height: float) => unit,
  ~failure: sizeError => unit=?,
  unit,
) => unit = "getSize"

type requestId

@module("react-native") @scope("Image")
external prefetch: (~uri: string) => requestId = "prefetch"

@module("react-native") @scope("Image")
external abortPrefetch: requestId => unit = "abortPrefetch"

@module("react-native") @scope("Image")
external queryCache: (~uris: array<string>) => unit = "queryCache"

type asset = {
  uri: string,
  width: float,
  height: float,
}

@module("react-native") @scope("Image")
external resolveAssetSource: Source.t => asset = "resolveAssetSource"

