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

+ (int)sdkVersion {
    return HOPPER_CURRENT_SDK_VERSION;
}

- (instancetype)initWithHopperServices:(NSObject<HPHopperServices> *)services {
    if (self = [super init]) {
        _services = services;
    }
    return self;
}

- (NSObject<HPHopperUUID> *)pluginUUID {
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
    return @"___COPYRIGHT___";
}

- (NSString *)pluginVersion {
    return @"0.0.1";
}

- (NSString *)commandLineIdentifier {
    return @"___VARIABLE_commandLineIdentifier___";
}

- (BOOL)canLoadDebugFiles {
    return NO;
}

// Returns an array of DetectedFileType objects.
- (NSArray<NSObject<HPDetectedFileType> *> *)detectedTypesForData:(NSData *)data {

    return @[];
}

- (FileLoaderLoadingStatus)loadData:(nonnull const void *)bytes
                             length:(size_t)length
              usingDetectedFileType:(nonnull NSObject<HPDetectedFileType> *)fileType
                            options:(FileLoaderOptions)options
                            forFile:(nonnull NSObject<HPDisassembledFile> *)file
                      usingCallback:(nullable FileLoadingCallbackInfo)callback {

    return DIS_OK;
}

- (void)fixupRebasedFile:(nonnull NSObject<HPDisassembledFile> *)file
               withSlide:(int64_t)slide
        originalFileData:(nonnull const void *)fileBytes
                  length:(size_t)length {
}

- (FileLoaderLoadingStatus)loadDebugData:(nonnull const void *)bytes
                                  length:(size_t)length
                                 forFile:(nonnull NSObject<HPDisassembledFile> *)file
                           usingCallback:(nullable FileLoadingCallbackInfo)callback {
    return DIS_NotSupported;
}

- (nullable NSData *)extractFromData:(nonnull const void *)bytes
                              length:(size_t)length
               usingDetectedFileType:(nonnull NSObject<HPDetectedFileType> *)fileType
                    originalFileName:(nullable NSString *)filename
                  returnAdjustOffset:(nullable uint64_t *)adjustOffset
                returnAdjustFilename:(NSString * _Nullable __autoreleasing * _Nullable)newFilename {
    return nil;
}

@end
