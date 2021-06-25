include ReactNative.Style
// This file is mainly copy-and-pasted from upstream. Return types have been
// changed to conform to `Style2`

// Styles are documented here
// https://github.com/facebook/react-native/blob/master/Libraries/StyleSheet/StyleSheetTypes.js

// Note that all border*Width are in layout styles & view styles too
// React Native JS codebase have those in View Styles Props again but with different types
// because layout styles props don't accept animated values.
// We don't do the distinction as ReScript is an HMTS that doesn't support implicit subtyping

// ____DangerouslyImpreciseStyle_Internal
@obj
external // Dangerous Imprecise Style
// Contains all of
// - image style
// - text style
// - view style
// - transform style
// - shadow style
// - layout style

// *Comment below is supposed to be after the first ( below but refmt move it here*
// Image Style Props (https://reactnative.dev/docs/image-style-props)
style: (
  ~resizeMode: resizeMode=?,
  ~overlayColor: Color.t=?,
  ~tintColor: Color.t=?,
  ~color: // Text Style Props (https://reactnative.dev/docs/text-style-props)
  Color.t=?,
  ~fontFamily: string=?,
  ~fontSize: float=?,
  ~fontStyle: fontStyle=?,
  ~fontVariant: array<FontVariant.t>=?,
  ~fontWeight: @string
  [
    | #normal
    | #bold
    | @as("100") #_100
    | @as("200") #_200
    | @as("300") #_300
    | @as("400") #_400
    | @as("500") #_500
    | @as("600") #_600
    | @as("700") #_700
    | @as("800") #_800
    | @as("900") #_900
  ]=?,
  ~includeFontPadding: bool=?,
  ~letterSpacing: float=?,
  ~lineHeight: float=?,
  ~textAlign: textAlign=?,
  ~textAlignVertical: textAlignVertical=?,
  ~textDecorationColor: Color.t=?,
  ~textDecorationLine: @string
  [
    | #none
    | #underline
    | @as("line-through") #lineThrough
    | @as("underline line-through") #underlineLineThrough
  ]=?,
  ~textDecorationStyle: textDecorationStyle=?,
  ~textShadowColor: Color.t=?,
  ~textShadowOffset: offset=?,
  ~textShadowRadius: float=?,
  ~textTransform: textTransform=?,
  ~writingDirection: writingDirection=?,
  ~backfaceVisibility: // View styles https://reactnative.dev/docs/view-style-props
  backfaceVisibility=?,
  ~backgroundColor: Color.t=?,
  ~borderBottomColor: Color.t=?,
  ~borderBottomEndRadius: float=?,
  ~borderBottomLeftRadius: float=?,
  ~borderBottomRightRadius: float=?,
  ~borderBottomStartRadius: float=?,
  ~borderBottomWidth: float=?,
  ~borderColor: Color.t=?,
  ~borderEndColor: Color.t=?,
  ~borderEndWidth: float=?,
  ~borderLeftColor: Color.t=?,
  ~borderLeftWidth: float=?,
  ~borderRadius: float=?,
  ~borderRightColor: Color.t=?,
  ~borderRightWidth: float=?,
  ~borderStartColor: Color.t=?,
  ~borderStartWidth: float=?,
  ~borderStyle: borderStyle=?,
  ~borderTopColor: Color.t=?,
  ~borderTopEndRadius: float=?,
  ~borderTopLeftRadius: float=?,
  ~borderTopRightRadius: float=?,
  ~borderTopStartRadius: float=?,
  ~borderTopWidth: float=?,
  ~borderWidth: float=?,
  ~elevation: float=?,
  ~opacity: float=?,
  ~transform: // Transform Props (https://reactnative.dev/docs/transforms#props)
  array<transform>=?, // all other transform props are deprecated
  ~shadowColor: // Shadow Props (https://reactnative.dev/docs/shadow-props)
  Color.t=?,
  ~shadowOffset: offset=?,
  ~shadowOpacity: float=?,
  ~shadowRadius: float=?,
  ~alignContent: // Layout Style Props (https://reactnative.dev/docs/layout-props)

  @string
  [
    | @as("flex-start") #flexStart
    | @as("flex-end") #flexEnd
    | #center
    | #stretch
    | @as("space-around") #spaceAround
    | @as("space-between") #spaceBetween
  ]=?,
  ~alignItems: @string
  [
    | @as("flex-start") #flexStart
    | @as("flex-end") #flexEnd
    | #center
    | #stretch
    | #baseline
  ]=?,
  ~alignSelf: @string
  [
    | #auto
    | @as("flex-start") #flexStart
    | @as("flex-end") #flexEnd
    | #center
    | #stretch
    | #baseline
  ]=?,
  ~aspectRatio: float=?,
  ~bottom: // border*Width are commented because already in view styles props (see explanation at the top)
  // ~borderBottomWidth: float=?,
  // ~borderEndWidth: float=?,
  // ~borderLeftWidth: float=?,
  // ~borderRightWidth: float=?,
  // ~borderStartWidth: float=?,
  // ~borderTopWidth: float=?,
  // ~borderWidth: float=?,
  size=?,
  ~direction: @string [@as("inherit") #inherit_ | #ltr | #rtl]=?,
  ~display: display=?,
  ~_end: size=?,
  ~flex: float=?,
  ~flexBasis: margin=?,
  ~flexDirection: @string
  [
    | #row
    | @as("row-reverse") #rowReverse
    | #column
    | @as("column-reverse") #columnReverse
  ]=?,
  ~flexGrow: float=?,
  ~flexShrink: float=?,
  ~flexWrap: flexWrap=?,
  ~height: size=?,
  ~justifyContent: @string
  [
    | @as("flex-start") #flexStart
    | @as("flex-end") #flexEnd
    | #center
    | @as("space-around") #spaceAround
    | @as("space-between") #spaceBetween
    | @as("space-evenly") #spaceEvenly
  ]=?,
  ~left: size=?,
  ~margin: margin=?,
  ~marginBottom: margin=?,
  ~marginEnd: margin=?,
  ~marginHorizontal: margin=?,
  ~marginLeft: margin=?,
  ~marginRight: margin=?,
  ~marginStart: margin=?,
  ~marginTop: margin=?,
  ~marginVertical: margin=?,
  ~maxHeight: size=?,
  ~maxWidth: size=?,
  ~minHeight: size=?,
  ~minWidth: size=?,
  ~overflow: overflow=?,
  ~padding: size=?,
  ~paddingBottom: size=?,
  ~paddingEnd: size=?,
  ~paddingHorizontal: size=?,
  ~paddingLeft: size=?,
  ~paddingRight: size=?,
  ~paddingStart: size=?,
  ~paddingTop: size=?,
  ~paddingVertical: size=?,
  ~position: position=?,
  ~right: size=?,
  ~start: size=?,
  ~top: size=?,
  ~width: size=?,
  ~zIndex: int=?,
  unit,
) => Style2.t<[> ]> = ""

// ____ViewStyleProp_Internal
@obj
external // *Comment below is supposed to be after the first ( below but refmt move it here*
// View styles https://reactnative.dev/docs/view-style-props
viewStyle: (
  ~backfaceVisibility: backfaceVisibility=?,
  ~backgroundColor: Color.t=?,
  ~borderBottomColor: Color.t=?,
  ~borderBottomEndRadius: float=?,
  ~borderBottomLeftRadius: float=?,
  ~borderBottomRightRadius: float=?,
  ~borderBottomStartRadius: float=?,
  ~borderBottomWidth: float=?,
  ~borderColor: Color.t=?,
  ~borderEndColor: Color.t=?,
  ~borderEndWidth: float=?,
  ~borderLeftColor: Color.t=?,
  ~borderLeftWidth: float=?,
  ~borderRadius: float=?,
  ~borderRightColor: Color.t=?,
  ~borderRightWidth: float=?,
  ~borderStartColor: Color.t=?,
  ~borderStartWidth: float=?,
  ~borderStyle: borderStyle=?,
  ~borderTopColor: Color.t=?,
  ~borderTopEndRadius: float=?,
  ~borderTopLeftRadius: float=?,
  ~borderTopRightRadius: float=?,
  ~borderTopStartRadius: float=?,
  ~borderTopWidth: float=?,
  ~borderWidth: float=?,
  ~elevation: float=?,
  ~opacity: float=?,
  ~transform: // Transform Props (https://reactnative.dev/docs/transforms#props)
  array<transform>=?, // all other transform props are deprecated
  ~shadowColor: // Shadow Props (https://reactnative.dev/docs/shadow-props)
  Color.t=?,
  ~shadowOffset: offset=?,
  ~shadowOpacity: float=?,
  ~shadowRadius: float=?,
  ~alignContent: // Layout Style Props (https://reactnative.dev/docs/layout-props)

  @string
  [
    | @as("flex-start") #flexStart
    | @as("flex-end") #flexEnd
    | #center
    | #stretch
    | @as("space-around") #spaceAround
    | @as("space-between") #spaceBetween
  ]=?,
  ~alignItems: @string
  [
    | @as("flex-start") #flexStart
    | @as("flex-end") #flexEnd
    | #center
    | #stretch
    | #baseline
  ]=?,
  ~alignSelf: @string
  [
    | #auto
    | @as("flex-start") #flexStart
    | @as("flex-end") #flexEnd
    | #center
    | #stretch
    | #baseline
  ]=?,
  ~aspectRatio: float=?,
  ~bottom: // border*Width are commented because already in view styles props (see explanation at the top)
  // ~borderBottomWidth: float=?,
  // ~borderEndWidth: float=?,
  // ~borderLeftWidth: float=?,
  // ~borderRightWidth: float=?,
  // ~borderStartWidth: float=?,
  // ~borderTopWidth: float=?,
  // ~borderWidth: float=?,
  size=?,
  ~direction: @string [@as("inherit") #inherit_ | #ltr | #rtl]=?,
  ~display: display=?,
  ~_end: size=?,
  ~flex: float=?,
  ~flexBasis: margin=?,
  ~flexDirection: @string
  [
    | #row
    | @as("row-reverse") #rowReverse
    | #column
    | @as("column-reverse") #columnReverse
  ]=?,
  ~flexGrow: float=?,
  ~flexShrink: float=?,
  ~flexWrap: flexWrap=?,
  ~height: size=?,
  ~justifyContent: @string
  [
    | @as("flex-start") #flexStart
    | @as("flex-end") #flexEnd
    | #center
    | @as("space-around") #spaceAround
    | @as("space-between") #spaceBetween
    | @as("space-evenly") #spaceEvenly
  ]=?,
  ~left: size=?,
  ~margin: margin=?,
  ~marginBottom: margin=?,
  ~marginEnd: margin=?,
  ~marginHorizontal: margin=?,
  ~marginLeft: margin=?,
  ~marginRight: margin=?,
  ~marginStart: margin=?,
  ~marginTop: margin=?,
  ~marginVertical: margin=?,
  ~maxHeight: size=?,
  ~maxWidth: size=?,
  ~minHeight: size=?,
  ~minWidth: size=?,
  ~overflow: overflow=?,
  ~padding: size=?,
  ~paddingBottom: size=?,
  ~paddingEnd: size=?,
  ~paddingHorizontal: size=?,
  ~paddingLeft: size=?,
  ~paddingRight: size=?,
  ~paddingStart: size=?,
  ~paddingTop: size=?,
  ~paddingVertical: size=?,
  ~position: position=?,
  ~right: size=?,
  ~start: size=?,
  ~top: size=?,
  ~width: size=?,
  ~zIndex: int=?,
  unit,
) => Style2.t<[> Style2.viewStyle ]>  = ""

// ____TextStyleProp_Internal
@obj
external // Text Style Props (https://reactnative.dev/docs/text-style-props)
textStyle: (
  ~color: Color.t=?,
  ~fontFamily: string=?,
  ~fontSize: float=?,
  ~fontStyle: fontStyle=?,
  ~fontVariant: array<FontVariant.t>=?,
  ~fontWeight: @string
  [
    | #normal
    | #bold
    | @as("100") #_100
    | @as("200") #_200
    | @as("300") #_300
    | @as("400") #_400
    | @as("500") #_500
    | @as("600") #_600
    | @as("700") #_700
    | @as("800") #_800
    | @as("900") #_900
  ]=?,
  ~includeFontPadding: bool=?,
  ~letterSpacing: float=?,
  ~lineHeight: float=?,
  ~textAlign: textAlign=?,
  ~textAlignVertical: textAlignVertical=?,
  ~textDecorationColor: Color.t=?,
  ~textDecorationLine: @string
  [
    | #none
    | #underline
    | @as("line-through") #lineThrough
    | @as("underline line-through") #underlineLineThrough
  ]=?,
  ~textDecorationStyle: textDecorationStyle=?,
  ~textShadowColor: Color.t=?,
  ~textShadowOffset: offset=?,
  ~textShadowRadius: float=?,
  ~textTransform: textTransform=?,
  ~writingDirection: writingDirection=?,
  ~backfaceVisibility: // View styles https://reactnative.dev/docs/view-style-props
  backfaceVisibility=?,
  ~backgroundColor: Color.t=?,
  ~borderBottomColor: Color.t=?,
  ~borderBottomEndRadius: float=?,
  ~borderBottomLeftRadius: float=?,
  ~borderBottomRightRadius: float=?,
  ~borderBottomStartRadius: float=?,
  ~borderBottomWidth: float=?,
  ~borderColor: Color.t=?,
  ~borderEndColor: Color.t=?,
  ~borderEndWidth: float=?,
  ~borderLeftColor: Color.t=?,
  ~borderLeftWidth: float=?,
  ~borderRadius: float=?,
  ~borderRightColor: Color.t=?,
  ~borderRightWidth: float=?,
  ~borderStartColor: Color.t=?,
  ~borderStartWidth: float=?,
  ~borderStyle: borderStyle=?,
  ~borderTopColor: Color.t=?,
  ~borderTopEndRadius: float=?,
  ~borderTopLeftRadius: float=?,
  ~borderTopRightRadius: float=?,
  ~borderTopStartRadius: float=?,
  ~borderTopWidth: float=?,
  ~borderWidth: float=?,
  ~elevation: float=?,
  ~opacity: float=?,
  ~transform: // Transform Props (https://reactnative.dev/docs/transforms#props)
  array<transform>=?, // all other transform props are deprecated
  ~shadowColor: // Shadow Props (https://reactnative.dev/docs/shadow-props)
  Color.t=?,
  ~shadowOffset: offset=?,
  ~shadowOpacity: float=?,
  ~shadowRadius: float=?,
  ~alignContent: // Layout Style Props (https://reactnative.dev/docs/layout-props)

  @string
  [
    | @as("flex-start") #flexStart
    | @as("flex-end") #flexEnd
    | #center
    | #stretch
    | @as("space-around") #spaceAround
    | @as("space-between") #spaceBetween
  ]=?,
  ~alignItems: @string
  [
    | @as("flex-start") #flexStart
    | @as("flex-end") #flexEnd
    | #center
    | #stretch
    | #baseline
  ]=?,
  ~alignSelf: @string
  [
    | #auto
    | @as("flex-start") #flexStart
    | @as("flex-end") #flexEnd
    | #center
    | #stretch
    | #baseline
  ]=?,
  ~aspectRatio: float=?,
  ~bottom: // border*Width are commented because already in view styles props (see explanation at the top)
  // ~borderBottomWidth: float=?,
  // ~borderEndWidth: float=?,
  // ~borderLeftWidth: float=?,
  // ~borderRightWidth: float=?,
  // ~borderStartWidth: float=?,
  // ~borderTopWidth: float=?,
  // ~borderWidth: float=?,
  size=?,
  ~direction: @string [@as("inherit") #inherit_ | #ltr | #rtl]=?,
  ~display: display=?,
  ~_end: size=?,
  ~flex: float=?,
  ~flexBasis: margin=?,
  ~flexDirection: @string
  [
    | #row
    | @as("row-reverse") #rowReverse
    | #column
    | @as("column-reverse") #columnReverse
  ]=?,
  ~flexGrow: float=?,
  ~flexShrink: float=?,
  ~flexWrap: flexWrap=?,
  ~height: size=?,
  ~justifyContent: @string
  [
    | @as("flex-start") #flexStart
    | @as("flex-end") #flexEnd
    | #center
    | @as("space-around") #spaceAround
    | @as("space-between") #spaceBetween
    | @as("space-evenly") #spaceEvenly
  ]=?,
  ~left: size=?,
  ~margin: margin=?,
  ~marginBottom: margin=?,
  ~marginEnd: margin=?,
  ~marginHorizontal: margin=?,
  ~marginLeft: margin=?,
  ~marginRight: margin=?,
  ~marginStart: margin=?,
  ~marginTop: margin=?,
  ~marginVertical: margin=?,
  ~maxHeight: size=?,
  ~maxWidth: size=?,
  ~minHeight: size=?,
  ~minWidth: size=?,
  ~overflow: overflow=?,
  ~padding: size=?,
  ~paddingBottom: size=?,
  ~paddingEnd: size=?,
  ~paddingHorizontal: size=?,
  ~paddingLeft: size=?,
  ~paddingRight: size=?,
  ~paddingStart: size=?,
  ~paddingTop: size=?,
  ~paddingVertical: size=?,
  ~position: position=?,
  ~right: size=?,
  ~start: size=?,
  ~top: size=?,
  ~width: size=?,
  ~zIndex: int=?,
  unit,
) => Style2.t<[> Style2.textStyle ]> = ""

// ____ImageStyleProp_Internal
@obj
external // Image Style Props (https://reactnative.dev/docs/image-style-props)
imageStyle: (
  ~resizeMode: resizeMode=?,
  ~overlayColor: Color.t=?,
  ~tintColor: Color.t=?,
  ~backfaceVisibility: // View styles https://reactnative.dev/docs/view-style-props
  backfaceVisibility=?,
  ~backgroundColor: Color.t=?,
  ~borderBottomColor: Color.t=?,
  ~borderBottomEndRadius: float=?,
  ~borderBottomLeftRadius: float=?,
  ~borderBottomRightRadius: float=?,
  ~borderBottomStartRadius: float=?,
  ~borderBottomWidth: float=?,
  ~borderColor: Color.t=?,
  ~borderEndColor: Color.t=?,
  ~borderEndWidth: float=?,
  ~borderLeftColor: Color.t=?,
  ~borderLeftWidth: float=?,
  ~borderRadius: float=?,
  ~borderRightColor: Color.t=?,
  ~borderRightWidth: float=?,
  ~borderStartColor: Color.t=?,
  ~borderStartWidth: float=?,
  ~borderStyle: borderStyle=?,
  ~borderTopColor: Color.t=?,
  ~borderTopEndRadius: float=?,
  ~borderTopLeftRadius: float=?,
  ~borderTopRightRadius: float=?,
  ~borderTopStartRadius: float=?,
  ~borderTopWidth: float=?,
  ~borderWidth: float=?,
  ~elevation: float=?,
  ~opacity: float=?,
  ~transform: // Transform Props (https://reactnative.dev/docs/transforms#props)
  array<transform>=?, // all other transform props are deprecated
  ~shadowColor: // Shadow Props (https://reactnative.dev/docs/shadow-props)
  Color.t=?,
  ~shadowOffset: offset=?,
  ~shadowOpacity: float=?,
  ~shadowRadius: float=?,
  ~alignContent: // Layout Style Props (https://reactnative.dev/docs/layout-props)

  @string
  [
    | @as("flex-start") #flexStart
    | @as("flex-end") #flexEnd
    | #center
    | #stretch
    | @as("space-around") #spaceAround
    | @as("space-between") #spaceBetween
  ]=?,
  ~alignItems: @string
  [
    | @as("flex-start") #flexStart
    | @as("flex-end") #flexEnd
    | #center
    | #stretch
    | #baseline
  ]=?,
  ~alignSelf: @string
  [
    | #auto
    | @as("flex-start") #flexStart
    | @as("flex-end") #flexEnd
    | #center
    | #stretch
    | #baseline
  ]=?,
  ~aspectRatio: float=?,
  ~bottom: // border*Width are commented because already in view styles props (see explanation at the top)
  // ~borderBottomWidth: float=?,
  // ~borderEndWidth: float=?,
  // ~borderLeftWidth: float=?,
  // ~borderRightWidth: float=?,
  // ~borderStartWidth: float=?,
  // ~borderTopWidth: float=?,
  // ~borderWidth: float=?,
  size=?,
  ~direction: @string [@as("inherit") #inherit_ | #ltr | #rtl]=?,
  ~display: display=?,
  ~_end: size=?,
  ~flex: float=?,
  ~flexBasis: margin=?,
  ~flexDirection: @string
  [
    | #row
    | @as("row-reverse") #rowReverse
    | #column
    | @as("column-reverse") #columnReverse
  ]=?,
  ~flexGrow: float=?,
  ~flexShrink: float=?,
  ~flexWrap: flexWrap=?,
  ~height: size=?,
  ~justifyContent: @string
  [
    | @as("flex-start") #flexStart
    | @as("flex-end") #flexEnd
    | #center
    | @as("space-around") #spaceAround
    | @as("space-between") #spaceBetween
    | @as("space-evenly") #spaceEvenly
  ]=?,
  ~left: size=?,
  ~margin: margin=?,
  ~marginBottom: margin=?,
  ~marginEnd: margin=?,
  ~marginHorizontal: margin=?,
  ~marginLeft: margin=?,
  ~marginRight: margin=?,
  ~marginStart: margin=?,
  ~marginTop: margin=?,
  ~marginVertical: margin=?,
  ~maxHeight: size=?,
  ~maxWidth: size=?,
  ~minHeight: size=?,
  ~minWidth: size=?,
  ~overflow: overflow=?,
  ~padding: size=?,
  ~paddingBottom: size=?,
  ~paddingEnd: size=?,
  ~paddingHorizontal: size=?,
  ~paddingLeft: size=?,
  ~paddingRight: size=?,
  ~paddingStart: size=?,
  ~paddingTop: size=?,
  ~paddingVertical: size=?,
  ~position: position=?,
  ~right: size=?,
  ~start: size=?,
  ~top: size=?,
  ~width: size=?,
  ~zIndex: int=?,
  unit,
) => Style2.t<[> Style2.imageStyle ]> = ""
