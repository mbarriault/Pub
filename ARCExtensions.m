//
//  NSObject+ARCExtensions.m
//  Pub
//
//  Created by Mike Barriault on 2012-08-13.
//  Copyright (c) 2012 Elemist.net. All rights reserved.
//

#import "ARCExtensions.h"

@implementation NSObject (ARCExtensions)
+(id) task {
    return [[NSTask alloc] init];
}
@end
