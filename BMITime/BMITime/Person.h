//
//  Person.h
//  BMITime
//
//  Created by Iván González Aguilar on 9/15/12.
//  Copyright (c) 2012 com.acme. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property float heightInMeters;
@property int weightInKilos;

// This method calculates the Body Mass Index
- (float)bodyMassIndex;

//instance variables methods
//- (float)heightInMeters;
//- (void)setHeightInMeters:(float)h;
//- (int) weightInKilos;
//- (void)setWeightInKilos:(int)w;

@end
