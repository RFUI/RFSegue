//
//  RTHelper.h
//  RFKit
//
//  Created by BB9z on 22/02/2018.
//  Copyright © 2018 RFUI. All rights reserved.
//

#import "RFRuntime.h"

/**
 Helper methods for unit test.
 */
@interface RTHelper : NSObject

/**
 Help test cases written in Swift to catch NSException.
 */
+ (BOOL)catchException:(NS_NOESCAPE void(^__nonnull)(void))tryBlock error:(NSError *__nullable __autoreleasing *__nullable)error;

@end
