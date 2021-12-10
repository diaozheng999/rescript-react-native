(** Compat modules *)

module Accessibility = Accessibility
module AccessibilityActionEvent = AccessibilityActionEvent
module AccessibilityInfo = AccessibilityInfo
module ActionSheetIOS = ActionSheetIOS
module ActivityIndicator_Size = ActivityIndicator_Size
module Alert = Alert
module Animated = Animated
module Appearance = Appearance
module AppRegistry = AppRegistry
module AppState = AppState
module AsyncStorage = AsyncStorage
  [@@deprecated "use @react-native-community/async-storage instead"]
module BackHandler = BackHandler
module Button = Button
module Clipboard = Clipboard
module Color = Color
module DatePickerAndroid = DatePickerAndroid
module DevSettings = DevSettings
module Dimensions = Dimensions
module DrawerLayoutAndroidElement = DrawerLayoutAndroidElement
module DrawerLayoutAndroidMethods = DrawerLayoutAndroidMethods
module DynamicColorIOS = DynamicColorIOS
module Easing = Easing
module Event = Event
module EventSubscription = EventSubscription
module FontVariant = FontVariant
module Global = Global
module ImagePickerIOS = ImagePickerIOS
module InteractionManager = InteractionManager
module Keyboard = Keyboard
module LayoutAnimation = LayoutAnimation
module Linking = Linking
module LogBox = LogBox
module Modal_Orientation = Modal_Orientation
module Modal = Modal
module NativeElement = NativeElement
module NativeEventEmitter = NativeEventEmitter
module NativeMethods = NativeMethods
module NativeTypes = NativeTypes
module Packager = Packager
module PanResponder = PanResponder
module PermissionsAndroid = PermissionsAndroid
module PixelRatio = PixelRatio
module PlatformCompat = Platform
module PlatformColor = PlatformColor
module PushNotificationIOS = PushNotificationIOS
module ScrollViewElement = ScrollViewElement
module ScrollViewMethods = ScrollViewMethods
module Settings = Settings
module Share = Share
module SoundManager = SoundManager
module SourceCode = SourceCode
module StatusBar = StatusBar
module TextInputElement = TextInputElement
module TextInputMethods = TextInputMethods
module ToastAndroid = ToastAndroid
module TouchableNativeFeedback = TouchableNativeFeedback
module TouchableOpacityElement = TouchableOpacityElement
module TouchableOpacityMethods = TouchableOpacityMethods
module TouchableWithoutFeedback = TouchableWithoutFeedback
module TV = TV
module UIManager = UIManager
module Vibration = Vibration
module ViewPagerAndroidElement = ViewPagerAndroidElement
module ViewPagerAndroidMethods = ViewPagerAndroidMethods
module VirtualizedListElement = VirtualizedListElement
module VirtualizedListMethods = VirtualizedListMethods
module VirtualizedSectionListElement = VirtualizedSectionListElement
module VirtualizedSectionListMethods = VirtualizedSectionListMethods
module Web = Web
module YellowBox = YellowBox

(** components *)

module ActivityIndicator = ActivityIndicator
module DatePickerIOS = DatePickerIOS
module DrawerLayoutAndroid = DrawerLayoutAndroid
module FlatList = FlatList
module Image = Image
module ImageBackground = ImageBackground
module InputAccessoryView = InputAccessoryView
module KeyboardAvoidingView = KeyboardAvoidingView
module MaskedViewIOS = MaskedViewIOS
module Pressable = Pressable
module ProgressBarAndroid = ProgressBarAndroid
module ProgressViewIOS = ProgressViewIOS
module RefreshControl = RefreshControl
module SafeAreaView = SafeAreaView
module ScrollView = ScrollView
module SectionList = SectionList
module SegmentedControlIOS = SegmentedControlIOS
module Slider = Slider
module SnapshotViewIOS = SnapshotViewIOS
module Switch = Switch
module Text = Text
module TextInput = TextInput
module TouchableHighlight = TouchableHighlight
module TouchableOpacity = TouchableOpacity
module View = View
module VirtualizedList = VirtualizedList
module VirtualizedSectionList = VirtualizedSectionList

(** overrides *)

module AnimationFrame = AnimationFrame [@@deprecated]
module Platform = Platform2
module Ref = Ref
module StyleCompat = ReactNative.Style
module StyleUnsafe = Style
module Style = Style2
module StyleSheet = StyleSheet

(** Additional Quality-of-life changes *)

module Deps = Deps

module Hook = struct
  include HookWithDeps
end

external requireNativeComponent : string -> 'a = "requireNativeComponent"
  [@@bs.module "react-native"]

external inDevMode : bool = "__DEV__" [@@bs.val]
