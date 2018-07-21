//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___PACKAGENAMEASIDENTIFIER___CPU.h"
#import "___PACKAGENAMEASIDENTIFIER___Ctx.h"

@implementation ___PACKAGENAMEASIDENTIFIER___CPU {
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

- (NSObject<HPHopperServices> *)hopperServices {
    return _services;
}

- (Class)cpuContextClass {
    return [___PACKAGENAMEASIDENTIFIER___Ctx class];
}

- (NSObject<CPUContext> *)buildCPUContextForFile:(NSObject<HPDisassembledFile> *)file {
    return [[___PACKAGENAMEASIDENTIFIER___Ctx alloc] initWithCPU:self andFile:file];
}

- (HopperUUID *)pluginUUID {
    return [_services UUIDWithString:@"___UUID___"];
}

- (HopperPluginType)pluginType {
    return Plugin_CPU;
}

- (NSString *)pluginName {
    return @"___PACKAGENAMEASIDENTIFIER___";
}

- (NSString *)pluginDescription {
    return @"___PACKAGENAMEASIDENTIFIER___ CPU support";
}

- (NSString *)pluginAuthor {
    return @"___FULLUSERNAME___";
}

- (NSString *)pluginCopyright {
    return @"___COPYRIGHT___";
}

- (NSArray<NSString *> *)cpuFamilies {
    return @[ @"___PACKAGENAMEASIDENTIFIER___" ];
}

- (NSString *)pluginVersion {
    return @"0.0.1";
}

- (NSString *)commandLineIdentifier {
    return @"___VARIABLE_commandLineIdentifier___";
}

- (NSArray<NSString *> *)cpuSubFamiliesForFamily:(NSString *)family {
    if ([family isEqualToString:@"___PACKAGENAMEASIDENTIFIER___"])
        return @[ @"___VARIABLE_cpuSubFamily___" ];
    return nil;
}

- (int)addressSpaceWidthInBitsForCPUFamily:(NSString *)family andSubFamily:(NSString *)subFamily {
    if ([family isEqualToString:@"___PACKAGENAMEASIDENTIFIER___"]) {
        if ([subFamily isEqualToString:@"___VARIABLE_cpuSubFamily___"])
            return ___VARIABLE_bitCount___;
    }
    return 0;
}

- (CPUEndianess)endianess {
    return ___VARIABLE_endianess___;
}

- (NSUInteger)syntaxVariantCount {
    return 1;
}

- (NSUInteger)cpuModeCount {
    return 1;
}

- (NSArray<NSString *> *)syntaxVariantNames {
    return @[@"generic",];
}

- (NSArray<NSString *> *)cpuModeNames {
    return @[@"generic"];
}

- (NSString *)framePointerRegisterNameForFile:(NSObject<HPDisassembledFile> *)file cpuMode:(uint8_t)cpuMode {
    return @"";
}

- (NSUInteger)registerClassCount {
    return RegClass____PACKAGENAMEASIDENTIFIER____Cnt;
}

- (NSUInteger)registerCountForClass:(RegClass)reg_class {
    switch (reg_class) {
        default:
            break;
    }
    return ___VARIABLE_registerCount___;
}

- (BOOL)registerIndexIsStackPointer:(NSUInteger)reg
                            ofClass:(RegClass)reg_class
                            cpuMode:(uint8_t)cpuMode
                               file:(NSObject<HPDisassembledFile> *)file {
    return NO;
}

- (BOOL)registerIndexIsFrameBasePointer:(NSUInteger)reg
                                ofClass:(RegClass)reg_class
                                cpuMode:(uint8_t)cpuMode
                                   file:(NSObject<HPDisassembledFile> *)file {
    return NO;
}

- (BOOL)registerIndexIsProgramCounter:(NSUInteger)reg cpuMode:(uint8_t)cpuMode file:(NSObject<HPDisassembledFile> *)file {
    return reg == 1;
}

- (NSString *)registerIndexToString:(NSUInteger)reg
                            ofClass:(RegClass)reg_class
                        withBitSize:(NSUInteger)size
                           position:(DisasmPosition)position
                     andSyntaxIndex:(NSUInteger)syntaxIndex {
    switch (reg_class) {

        case -1:
            break;
        default:
            return [NSString stringWithFormat:@"class%d_reg%d", (int)reg_class, (int)reg];
    }
    return nil;
}

- (BOOL)registerHasSideEffectForIndex:(NSUInteger)reg andClass:(RegClass)reg_class {
    return NO;
}

- (NSString *)cpuRegisterStateMaskToString:(uint32_t)cpuState {
    return @"";
}

- (NSData *)nopWithSize:(NSUInteger)size andMode:(NSUInteger)cpuMode forFile:(NSObject<HPDisassembledFile> *)file {
    // Instruction size is always a multiple of 4
    if (size % 4 != 0)
        return nil;
    NSMutableData *nopArray = [[NSMutableData alloc] initWithCapacity:size];
    [nopArray setLength:size];
    uint32_t *ptr = (uint32_t *)[nopArray mutableBytes];
    for (NSUInteger i = 0; i < size; i += 4) {
        OSWriteBigInt32(ptr, i, 0x0);
    }
    return [NSData dataWithData:nopArray];
}

- (BOOL)canAssembleInstructionsForCPUFamily:(NSString *)family andSubFamily:(NSString *)subFamily {
    return NO;
}

- (BOOL)canDecompileProceduresForCPUFamily:(NSString *)family andSubFamily:(NSString *)subFamily {
    return NO;
}

@end
