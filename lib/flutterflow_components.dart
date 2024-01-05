library flutterflow_components;

import 'flutterflow_components_platform_interface.dart';

// Export Button components from buttons.dart for easy button usage.
export 'src/components/buttons.dart' show textFieldA, loadButton, buttonA;
// Export Font components from fonts.dart for easy font usage.
export 'src/components/fonts.dart'
    show fontAlmarai, fontElMessiri, fontLobster, fontPoppins;
// Export general-purpose functions from general.dart.
export 'src/components/general.dart'
    show
        generateCode,
        validateForm,
        openUrl,
        assetToUint8List,
        getWidgetByIndex,
        getDateTimeToDay;
// Export image-related functions and widgets from images_preview.dart.
export 'src/components/images_preview.dart'
    show
        logoContainer,
        previewProductImage,
        buildProductDetails,
        socialMediaItems,
        previewBase64Image,
        chooseFile;
// Export loading-related functions and widgets from loading.dart.
export 'src/components/loading.dart' show loadingAnimation, getSkeletonLoading;
// Export MultipleItemSelect class for multi-selection functionality.
export 'src/components/multiple_item_select.dart' show MultipleItemSelect;
// Export responsiveness-related functions from responsiveness.dart.
export 'src/components/reposnsiveness.dart'
    show getHeight, getCube, getWidth, padBox;
// Export showToast function for displaying toast messages.
export 'src/components/toast_show.dart' show showToast;
// Export various widgets for common use cases from widgets_display.dart.
export 'src/components/widgets_display.dart'
    show columnHomeItems, itemsList, simpleCard, rowHomeItems, socialMediaItem;
// Export App Local Assets for easy access to local resources.
export 'src/config/utils/managers/app_assets.dart' show AppAssets;
// Export App Local Constants for commonly used constants in the app.
export 'src/config/utils/managers/app_constants.dart' show AppConstants;
// Export App Enums for defining custom enums used in the app.
export 'src/config/utils/managers/app_enums.dart'
    show AppAxis, PostsType, DeviceType;
// Export App Extensions for extending built-in Dart classes.
export 'src/config/utils/managers/app_extensions.dart'
    show DeviceTypeExtension, MediaQueryExtension, StringExtension, MonthName;
// Export App Values for consistent margin, padding, and size configurations.
export 'src/config/utils/managers/app_values.dart'
    show AppMargin, AppPadding, AppSize;
// Export App Colors for consistent color usage across the app.
export 'src/config/utils/styles/app_colors.dart' show AppColors;
// Export App Fonts for consistent font styles and sizes.
export 'src/config/utils/styles/app_fonts.dart' show AppFontSize, AppFontWeight;
// Export App Text Styles for common text styling functions.
export 'src/config/utils/styles/app_textstyles.dart'
    show
        getSemiBoldStyle,
        getBoldStyle,
        getLightStyle,
        getMediumStyle,
        getRegularStyle,
        italic;

/// flutterflow_components library provides a set of reusable Flutter components.
/// It includes colors, fonts, text styles, local assets, constants, enums, extensions,
/// buttons, fonts, and various widgets for common use cases.
class FlutterflowComponents {
  Future<String?> getPlatformVersion() {
    return FlutterflowComponentsPlatform.instance.getPlatformVersion();
  }
}
