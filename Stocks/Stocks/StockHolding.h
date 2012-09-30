//
//  StockHolding.h
//  Stocks
//
//  Created by Iván González Aguilar on 9/15/12.
//  Copyright (c) 2012 com.acme. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StockHolding : NSObject

@property float purchaseSharedPrice;
@property float currentSharePrice;
@property int numberOfShares;

- (float) costInDollars;
- (float) valueInDollars;
- (void)addYourselfToArray:(NSMutableArray *)theArray;

@end
