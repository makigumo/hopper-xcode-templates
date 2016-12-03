//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import <Foundation/Foundation.h>
#import <Hopper/Hopper.h>

@class ___PACKAGENAMEASIDENTIFIER___CPU;

@interface ___PACKAGENAMEASIDENTIFIER___Ctx : NSObject<CPUContext>

- (instancetype)initWithCPU:(___PACKAGENAMEASIDENTIFIER___CPU *)cpu andFile:(NSObject<HPDisassembledFile> *)file;

@end
