//
//  main.m
//  TimeAfterTime
//
//  Created by Iván González Aguilar on 9/7/12.
//  Copyright (c) 2012 com.acme. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDate *now = [[NSDate alloc] init];
        NSLog(@"The new date lives at %p", now);
        NSLog(@"The date is %@", now);
        
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since the start of 1970", seconds);
        
        NSDate *later = [now  dateByAddingTimeInterval:100000];
        NSLog(@"In 100,000 seconds it will be %@", later);
        
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSUInteger day = [cal ordinalityOfUnit:NSDayCalendarUnit
                                        inUnit:NSMonthCalendarUnit
                                       forDate:now];
        
        NSLog(@"This day is %lu of the month", day);
        
        
        //Challenge Chapter 12
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1981];
        [comps setMonth:8];
        [comps setDay:11];
        [comps setHour:12];
        [comps setMinute:0];
        [comps setSecond:0];
        
        NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        NSDate *dateOfBirth = [calendar dateFromComponents:comps];
        
        double alive = [now timeIntervalSinceDate:dateOfBirth];
        
        NSLog(@"I have been alive %.2f seconds", alive);
        
       
        
    }
    return 0;
}

