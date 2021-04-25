// generated by scripts/gen_component.js

include ReactNative.Image

module Compat = ReactNative.Image

@react.component @module("react-native")
external make: (
  ~ref: ref=?,
  ~accessibilityLabel: // Image props
  string=?,
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