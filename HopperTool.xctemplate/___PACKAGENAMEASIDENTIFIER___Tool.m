//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

#import "___PACKAGENAMEASIDENTIFIER___Tool.h"

@implementation ___PACKAGENAMEASIDENTIFIER___Tool {
    NSObject<HPHopperServices> *_services;
}

+ (int)sdkVersion {
    return HOPPER_CURRENT_SDK_VERSION;
}

- (nonnull instancetype)initWithHopperServices:(NSObject<HPHopperServices> *)services {
    if (self = [super init]) {
        _services = services;
    }
    return self;
}

- (nonnull NSObject<HPHopperUUID> *)pluginUUID {
    return [_services UUIDWithString:@"___UUID___"];
}

- (HopperPluginType)pluginType {
    return Plugin_Tool;
}

- (nonnull NSString *)pluginName {
    return @"___PACKAGENAMEASIDENTIFIER___";
}

- (nonnull NSString *)pluginDescription {
    return @"___PACKAGENAMEASIDENTIFIER___ Tool";
}

- (nonnull NSString *)pluginAuthor {
    return @"___FULLUSERNAME___";
}

- (nonnull NSString *)pluginCopyright {
    return @"___COPYRIGHT___";
}

- (nonnull NSString *)pluginVersion {
    return @"0.0.1";
}

- (nonnull NSArray<NSString *> *)commandLineIdentifiers {
    return @[@"___VARIABLE_commandLineIdentifier___"];
}

- (nonnull NSArray<NSDictionary<NSString *, id> *> *)toolMenuDescription {
    return @[];
}

@end
