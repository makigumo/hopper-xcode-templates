//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import <Foundation/Foundation.h>
#import <Hopper/Hopper.h>

typedef NS_ENUM(NSUInteger, ___PACKAGENAMEASIDENTIFIER___RegClass) {
    RegClass____PACKAGENAMEASIDENTIFIER____FPU = RegClass_FirstUserClass,
    RegClass____PACKAGENAMEASIDENTIFIER____Cnt
};

@interface ___PACKAGENAMEASIDENTIFIER___CPU : NSObject<CPUDefinition>

- (NSObject<HPHopperServices> *)hopperServices;

@end
