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

- (nonnull NSObject<HPHopperUUID> *)pluginUUID {
    return [_services UUIDWithString:@"___UUID___"];
}

- (HopperPluginType)pluginType {
    return Plugin_Loader;
}

- (nonnull NSString *)pluginName {
    return @"___PACKAGENAMEASIDENTIFIER___";
}

- (nonnull NSString *)pluginDescription {
    return @"___PACKAGENAMEASIDENTIFIER___ Loader";
}

- (nonnull NSString *)pluginAuthor {
    return @"___FULLUSERNAME___";
}

- (nonnull NSString *)pluginCopyright {
    return @"___COPYRIGHT___";
}

- (NSString *)pluginVersion {
    return @"0.0.1";
}

- (nonnull NSArray<NSString *> *)commandLineIdentifiers {
    return @[@"___VARIABLE_commandLineIdentifier___"];
}

- (BOOL)canLoadDebugFiles {
    return NO;
}

// Returns an array of DetectedFileType objects.
- (nullable NSArray<NSObject<HPDetectedFileType> *> *)detectedTypesForData:(nonnull const void *)bytes
                                                                    length:(size_t)length
                                                               ofFileNamed:(nullable NSString *)filename
                                                                    atPath:(nullable NSString *)fileFullPath {
    return @[];
}

- (FileLoaderLoadingStatus)loadData:(nonnull const void *)bytes
                             length:(size_t)length
                       originalPath:(nullable NSString *)fileFullPath
              usingDetectedFileType:(nonnull NSObject<HPDetectedFileType> *)fileType
                            options:(FileLoaderOptions)options
                            forFile:(nonnull NSObject<HPDisassembledFile> *)file
                      usingCallback:(nullable FileLoadingCallbackInfo)callback {

    return DIS_OK;
}

- (FileLoaderLoadingStatus)loadDebugData:(nonnull const void *)bytes
                                  length:(size_t)length
                            originalPath:(nullable NSString *)fileFullPath
                                 forFile:(nonnull NSObject<HPDisassembledFile> *)file
                           usingCallback:(nullable FileLoadingCallbackInfo)callback {
    return DIS_NotSupported;
}

- (void)fixupRebasedFile:(nonnull NSObject<HPDisassembledFile> *)file
               withSlide:(int64_t)slide
        originalFileData:(nonnull const void *)fileBytes
                  length:(size_t)length
            originalPath:(nullable NSString *)fileFullPath {
}

- (nullable NSData *)extractFromData:(nonnull const void *)bytes
                              length:(size_t)length
               usingDetectedFileType:(nonnull NSObject<HPDetectedFileType> *)fileType
                    originalFileName:(nullable NSString *)filename
                        originalPath:(nullable NSString *)fileFullPath
                  returnAdjustOffset:(nullable uint64_t *)adjustOffset
                returnAdjustFilename:(NSString * _Nullable __autoreleasing * _Nullable)newFilename {
    return nil;
}

- (void)setupFile:(nonnull NSObject<HPDisassembledFile> *)file
afterExtractionOf:(nonnull NSString *)filename
     originalPath:(nullable NSString *)fileFullPath
type:(nonnull NSObject<HPDetectedFileType> *)fileType {

}
@end
