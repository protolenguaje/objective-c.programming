//
//  ForeignStockHolding.m
//  Stocks
//
//  Created by Iván González Aguilar on 9/25/12.
//  Copyright (c) 2012 com.acme. All rights reserved.
//

#import "ForeignStockHolding.h"

@implementation ForeignStockHolding

@synthesize conversionRate;

- (float)costInDollars
{
    float localCostInDollars = [super costInDollars];
    return localCostInDollars * conversionRate;
}

- (float)valueInDollars
{
    float localValueInDollars = [super valueInDollars];
    return localValueInDollars * conversionRate;
}


@end
