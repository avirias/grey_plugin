#import "GreypluginPlugin.h"
#if __has_include(<greyplugin/greyplugin-Swift.h>)
#import <greyplugin/greyplugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "greyplugin-Swift.h"
#endif

@implementation GreypluginPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftGreypluginPlugin registerWithRegistrar:registrar];
}
@end
