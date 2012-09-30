//
//  main.c
//  Addresses
//
//  Created by Iván González Aguilar on 8/26/12.
//  Copyright (c) 2012 com.acme. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    int i = 17;
    int *addressOfI = &i;
    
    printf("i stores its value at %p \n", addressOfI);
    printf("this function starts at %p \n", main);
    printf("the int stored at addessOfI is %d \n", *addressOfI);
    
    //an assignment to store data at a particulasr adress
    *addressOfI = 89;
    
    printf("Now i is %d\n", i);
    
    printf("An int is %zu bytes \n", sizeof(i));
    printf("A pointer is %zu bytes \n", sizeof(addressOfI));
    
    
    float *myPointer = NULL;
    
    if(myPointer){
        printf("My pinter is not NULL \n");
    }else{
        printf("My pointer is NULL \n");
    }
        
    
    
    //Challenge
    printf("A float is %zu bytes \n", sizeof(float));
    printf("A short is %zu bytes \n", sizeof(short));
    
    return 0;
}

