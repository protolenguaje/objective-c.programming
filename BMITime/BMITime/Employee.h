//
//  Employee.h
//  BMITime
//
//  Created by Iván González Aguilar on 9/25/12.
//  Copyright (c) 2012 com.acme. All rights reserved.
//

#import "Person.h"
@class Asset;

@interface Employee : Person

@property int employeeID;

- (void)addAssetsObject:(Asset *)a;
- (unsigned int)valueOfAssets;

@end
