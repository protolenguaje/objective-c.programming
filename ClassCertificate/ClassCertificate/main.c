//
//  main.c
//  ClassCertificate
//
//  Created by Iván González Aguilar on 7/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>


void congratulateStudent(char *student, char *course,  int numDays)
{
    printf("%s has done as much %s Programming as I could fit into %d days. \n", 
           student, course, numDays);
    
}

int main(int argc, const char * argv[])
{
    congratulateStudent("Mark", "Cocoa", 5);
    sleep(2);
    congratulateStudent("Bio", "Objective-C", 2);
    sleep(2);
    congratulateStudent("Mike", "Python", 5);
    sleep(2);
    congratulateStudent("Ted", "iOS", 5);
   
    return 0;
}

