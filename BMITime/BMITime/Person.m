//
//  Person.m
//  BMITime
//
//  Created by Iván González Aguilar on 9/15/12.
//  Copyright (c) 2012 com.acme. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize heightInMeters, weightInKilos;

- (float)bodyMassIndex
{
    float height = [self heightInMeters];
    return [self weightInKilos] / (height * height);
}

//{
//    //It has two instance variables
//    float heightInMeters;
//    int weightInKilos;
//}
//- (float)heightInMeters
//{
//    return heightInMeters;
//}
//- (void)setHeightInMeters:(float)h
//{
//    heightInMeters = h;
//}
//- (int) weightInKilos
//{
//    return weightInKilos;
//}
//- (void)setWeightInKilos:(int)w
//{
//    weightInKilos = w;
//}


@end
