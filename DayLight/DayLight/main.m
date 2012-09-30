//
//  main.m
//  DayLight
//
//  Created by Iván González Aguilar on 9/7/12.
//  Copyright (c) 2012 com.acme. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //Challenge Chapter 13
        
        NSTimeZone *timeZone = [NSTimeZone systemTimeZone];
        BOOL isDaylight = [timeZone isDaylightSavingTime];
        
        if (isDaylight) {
            NSLog(@"Is DayLight");
        }else{
            NSLog(@"Is Not DayLight");
        }
        
        
    }
    return 0;
}

