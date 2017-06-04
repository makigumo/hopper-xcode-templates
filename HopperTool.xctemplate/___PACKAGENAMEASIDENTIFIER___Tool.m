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

- (instancetype)initWithHopperServices:(NSObject<HPHopperServices> *)services {
    if (self = [super init]) {
        _services = services;
    }
    return self;
}

- (HopperUUID *)pluginUUID {
    return [_services UUIDWithString:@"___UUID___"];
}

- (HopperPluginType)pluginType {
    return Plugin_Tool;
}

- (NSString *)pluginName {
    return @"___PACKAGENAMEASIDENTIFIER___";
}

- (NSString *)pluginDescription {
    return @"___PACKAGENAMEASIDENTIFIER___ Tool";
}

- (NSString *)pluginAuthor {
    return @"___FULLUSERNAME___";
}

- (NSString *)pluginCopyright {
    return @"___COPYRIGHT___";
}

- (NSString *)pluginVersion {
    return @"0.0.1";
}

- (NSArray *)toolMenuDescription {
    return @[];
}

@end
