//
//  main.m
//  NSStringChapter
//
//  Created by Iván González Aguilar on 9/7/12.
//  Copyright (c) 2012 com.acme. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString *lament = @"Why me!?";
        
        NSString *x = [NSString stringWithFormat:@"The best number is %d", 5];
        
        NSUInteger charCount = [x length];
        
        if ([lament isEqual:x]){
            NSLog(@"%@ and %@ are equal", lament, x);
        }
        
       
        
    }
    return 0;
}

