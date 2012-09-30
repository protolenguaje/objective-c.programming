//
//  main.m
//  Chapter15Challenge
//
//  Created by Iván González Aguilar on 9/15/12.
//  Copyright (c) 2012 com.acme. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Read in a file asa huge string (ingoring the posibility of an error)
        NSString *nameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames"
                                                         encoding:NSUTF8StringEncoding
                                                            error:NULL];
        
        //Break it into an array of strings
        NSArray *names = [nameString componentsSeparatedByString:@"\n"];
        
        //Go through the array one string at time
        for (NSString *name in names) {
            
            //Look for the string "aa" in case a case-insensitive manner
            NSRange r = [name rangeOfString:@"AA" options:NSCaseInsensitiveSearch];
            
            // Was it found?
            if (r.location != NSNotFound){
                 NSLog(@"%@", name);
            }
           
        }
        
        
        
        NSString *a = @"ABC";
        NSString *b = @"abc";
        
        if([a caseInsensitiveCompare:b] == NSOrderedSame){
            NSLog(@"%@ and %@ are equal", a, b);
        }
        
        if([a caseInsensitiveCompare:b] == NSOrderedAscending){
            NSLog(@"%@ comes before %@", a, b);
        }
        
        if([a caseInsensitiveCompare:b] == NSOrderedDescending){
            NSLog(@"%@ comes before %@ are equal", b, a);
        }
        
        
        //More challenging
        
        
        // Read in a file asa huge string (ingoring the posibility of an error)
        NSString *wordsString = [NSString stringWithContentsOfFile:@"/usr/share/dict/words"
                                                         encoding:NSUTF8StringEncoding
                                                            error:NULL];
        
        //Break it into an array of strings
        NSArray *words = [wordsString componentsSeparatedByString:@"\n"];
        
        
        for (NSString *name in names) {
            for (NSString *word in words) {
            
                if( [name caseInsensitiveCompare:word]  == NSOrderedSame    &&
                    [name compare:word]                 == NSOrderedAscending ){
                    
                    NSLog(@"%@ and %@ are equal", name, word);
                
                }
            }
        }
        
        
    }
    return 0;
}

