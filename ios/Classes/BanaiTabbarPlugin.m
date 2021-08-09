#import "BanaiTabbarPlugin.h"
#if __has_include(<banai_tabbar/banai_tabbar-Swift.h>)
#import <banai_tabbar/banai_tabbar-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "banai_tabbar-Swift.h"
#endif

@implementation BanaiTabbarPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftBanaiTabbarPlugin registerWithRegistrar:registrar];
}
@end
