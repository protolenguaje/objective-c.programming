//
//  main.m
//  BMITime
//
//  Created by Iván González Aguilar on 9/15/12.
//  Copyright (c) 2012 com.acme. All rights reserved.
//		

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "Asset.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        

//        Employee *person = [[Employee alloc] init];
//        [person setWeightInKilos:73];
//        [person setHeightInMeters:1.7];
//        [person setEmployeeID:15];
//        
//        float bmi = [person bodyMassIndex];
//        NSLog(@"Employee %d (%d, %.2f) has a BMI of %f",
//              [person employeeID], [person weightInKilos], [person heightInMeters], bmi);
//
        
        //Create an array ofEmployee objects
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        
        for (int i=0; i < 10; i++){
        
            //Create an instance of Employee
            Employee *employee = [[Employee alloc] init];
            
            //Give the instance variables interesting values
             [employee setWeightInKilos:90 + i];
             [employee setHeightInMeters:1.8 - i/10];
             [employee setEmployeeID:i];
            
            //Put the employee in the employees array
            [employees addObject:employee];
        }

        //Create 10 assets
        for (int i = 0; i < 10; i++) {
            
            // Create an asset
            Asset *asset = [[Asset alloc] init];
            
            // Give it an interensting label
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            [asset setLabel:currentLabel];
            [asset setResaleValue:i * 17];
            
            // Get a random number between 0 and 99 inclusive
            NSInteger randomIndex = random() % [employees count];
            
            // Find that employee
            Employee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            // Assign the asset to the employee
            [randomEmployee addAssetsObject:asset];
        }
        
        NSLog(@"Employees: %@", employees);
        
        NSLog(@"Giving up ownership of one employee");
        
        [employees removeObjectAtIndex:5];
        
        NSLog(@"Giving up ownership of array");
        
        employees = nil;
        
    }
    
    return 0;
}

