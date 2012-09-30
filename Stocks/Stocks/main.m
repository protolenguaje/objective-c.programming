//
//  main.m
//  Stocks
//
//  Created by Iván González Aguilar on 9/15/12.
//  Copyright (c) 2012 com.acme. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"
#import "ForeignStockHolding.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //Challenge Chapter 17
        
        NSMutableArray *stocks = [NSMutableArray array];
        
        StockHolding *sh1 = [[StockHolding alloc] init];
        [sh1 setPurchaseSharedPrice:2.30];
        [sh1 setCurrentSharePrice:4.50];
        [sh1 setNumberOfShares:40];
        [sh1 addYourselfToArray:stocks];
        
        StockHolding *sh2 = [[StockHolding alloc] init];
        [sh2 setPurchaseSharedPrice:12.19];
        [sh2 setCurrentSharePrice:10.56];
        [sh2 setNumberOfShares:90];
        [sh1 addYourselfToArray:stocks];
        
        StockHolding *sh3 = [[StockHolding alloc] init];
        [sh3 setPurchaseSharedPrice:45.10];
        [sh3 setCurrentSharePrice:49.51];
        [sh3 setNumberOfShares:210];
        [sh3 addYourselfToArray:stocks];
        
        
        //Challenge - Chapter 18 - Inheritance
        ForeignStockHolding *sh4 = [[ForeignStockHolding alloc] init];
        [sh4 setPurchaseSharedPrice:0.99];
        [sh4 setCurrentSharePrice:1.10];
        [sh4 setNumberOfShares:50];
        [sh4 setConversionRate:13.2];
        [sh4 addYourselfToArray:stocks];
        
        for (StockHolding *sh in stocks) {
              NSLog(@"StockHolding: %@", sh);
        }
      
        
    }
    return 0;
}

