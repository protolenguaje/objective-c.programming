//
//  main.m
//  ComputerName
//
//  Created by Iván González Aguilar on 9/7/12.
//  Copyright (c) 2012 com.acme. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
       
        NSHost *host = [NSHost currentHost];
        NSString *computerName = [host localizedName];
        NSLog(@"My computer name is %@", computerName);
        
    }
    return 0;
}

