//
//  StockHolding.m
//  Stocks
//
//  Created by Iván González Aguilar on 9/15/12.
//  Copyright (c) 2012 com.acme. All rights reserved.
//

#import "StockHolding.h"

@implementation StockHolding

@synthesize purchaseSharedPrice, currentSharePrice, numberOfShares;

- (float)costInDollars
{
    return purchaseSharedPrice * numberOfShares;
}

- (float)valueInDollars
{
    return currentSharePrice * numberOfShares;
}

- (void)addYourselfToArray:(NSMutableArray *)theArray
{
    [theArray addObject:self];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"[%.2f, %.2f, %d, %.2f, %.2f]",    purchaseSharedPrice,
                                                                        currentSharePrice,
                                                                        numberOfShares,
                                                                        [self costInDollars],
                                                                        [self valueInDollars]];
}

@end
