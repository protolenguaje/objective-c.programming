//
//  Asset.m
//  BMITime
//
//  Created by Iván González Aguilar on 9/30/12.
//  Copyright (c) 2012 com.acme. All rights reserved.
//

#import "Asset.h"

@implementation Asset

@synthesize label, resaleValue;

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: $%d >",
            [self label], [self resaleValue]];
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
