//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

#import "___PACKAGENAMEASIDENTIFIER___Loader.h"

@implementation ___PACKAGENAMEASIDENTIFIER___Loader {
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
    return Plugin_Loader;
}

- (NSString *)pluginName {
    return @"___PACKAGENAMEASIDENTIFIER___";
}

- (NSString *)pluginDescription {
    return @"___PACKAGENAMEASIDENTIFIER___ Loader";
}

- (NSString *)pluginAuthor {
    return @"___FULLUSERNAME___";
}

- (NSString *)pluginCopyright {
    return @"©2016 - ___FULLUSERNAME___";
}

- (NSString *)pluginVersion {
    return @"0.0.1";
}

- (CPUEndianess)endianess {
    return ___VARIABLE_endianess___;
}

- (BOOL)canLoadDebugFiles {
    return NO;
}

// Returns an array of DetectedFileType objects.
- (NSArray<DetectedFileType *> *)detectedTypesForData:(NSData *)data {

    return @[];
}

- (FileLoaderLoadingStatus)loadData:(NSData *)data usingDetectedFileType:(DetectedFileType *)fileType options:(FileLoaderOptions)options forFile:(NSObject<HPDisassembledFile> *)file usingCallback:(FileLoadingCallbackInfo)callback {

    return DIS_OK;
}

- (void)fixupRebasedFile:(NSObject<HPDisassembledFile> *)file withSlide:(int64_t)slide originalFileData:(NSData *)fileData {

}

- (FileLoaderLoadingStatus)loadDebugData:(NSData *)data forFile:(NSObject<HPDisassembledFile> *)file usingCallback:(FileLoadingCallbackInfo)callback {
    return DIS_NotSupported;
}

- (NSData *)extractFromData:(NSData *)data usingDetectedFileType:(NSObject<DetectedFileType> *)fileType returnAdjustOffset:(uint64_t *)adjustOffset {
    return nil;
}

@end
