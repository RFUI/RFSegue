//
//  RTHelper.m
//  RFKit
//
//  Created by BB9z on 22/02/2018.
//  Copyright © 2018 RFUI. All rights reserved.
//

#import "RTHelper.h"

@implementation RTHelper

+ (BOOL)catchException:(void(^)(void))tryBlock error:(NSError *__autoreleasing*)error {
    @try {
        tryBlock();
        return YES;
    }
    @catch (NSException *exception) {
        *error = [[NSError alloc] initWithDomain:exception.name code:0 userInfo:exception.userInfo];
        return NO;
    }
}

@end
