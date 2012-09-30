//
//  main.m
//  DateList
//
//  Created by Iván González Aguilar on 9/15/12.
//  Copyright (c) 2012 com.acme. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //Create three NSDate objects
        NSDate *now         =   [NSDate date];
        NSDate *tomorrow    =   [now dateByAddingTimeInterval: 24.0 * 60.0 * 60.0];
        NSDate *yesterday   =   [now dateByAddingTimeInterval:-24.0 * 60.0 * 60.0];
        
        
        NSArray *dateList   =   [NSArray arrayWithObjects:now, tomorrow, yesterday, nil];
        
        //How many dates are there?
        NSLog(@"There are %lu dates", [dateList count]);
        
        //Print a couple
        NSLog(@"The first date is %@", [dateList objectAtIndex:0]);
        NSLog(@"The second date is %@", [dateList objectAtIndex:1]);
        NSLog(@"The third date is %@", [dateList objectAtIndex:2]);
        
        NSUInteger dateCount = [dateList count];
        //Iterate over the array
        for (int i=0; i < dateCount; i++){
            NSDate *d = [dateList objectAtIndex:i];
            NSLog(@"Here is a date: %@", d);
        }
        
        //for-loop
        for (NSDate *d in dateList) {
            NSLog(@"forin - Here is a date: %@", d);
        }
        
        
        //NSMutableArray
        NSMutableArray *mutableDateList = [NSMutableArray array];
        
        //Add the dates
        [mutableDateList addObject:now];
        [mutableDateList addObject:tomorrow];
        
        //Put yesterday at hte beginning of the list
        [mutableDateList insertObject:yesterday atIndex:0];
        
        for (NSDate *d in mutableDateList) {
            NSLog(@"Here is a date: %@", d);
        }
        
        // Remove yesterday
        [mutableDateList removeObjectAtIndex:0];
        NSLog(@"Now the first date is %@", [mutableDateList objectAtIndex:0]);
        
        
        
    }
    return 0;
}

