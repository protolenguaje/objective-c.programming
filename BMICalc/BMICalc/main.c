//
//  main.c
//  BMICalc
//
//  Created by Iván González Aguilar on 9/1/12.
//  Copyright (c) 2012 com.acme. All rights reserved.
//

#include <stdio.h>
#include <time.h>

typedef struct {
    float heightInMeters;
    int weightInKilos;
} Person;

float bodyMassIndex(Person person)
{
    return person.weightInKilos / (person.heightInMeters * person.heightInMeters);
}

int main(int argc, const char * argv[])
{
    
    Person person;
    person.weightInKilos = 96;
    person.heightInMeters = 1.8;
    
    printf("person weighs %i kilograms \n", person.weightInKilos);
    printf("person is %.2f meters tall \n", person.heightInMeters);
    
    float bmi = bodyMassIndex(person);
    
    printf("person has a BMI of %.2f \n", bmi);
    
    
    //Challenge
    
    long secondsSince1970 = time(NULL);
    printf("It has been %ld seconds since 1970 \n", secondsSince1970);
    
    struct tm now;
    localtime_r(&secondsSince1970,&now);
    printf("The time is %d:%d:%d \n", now.tm_hour, now.tm_min, now.tm_sec);
    
    long fourMillionSeconds = secondsSince1970 + 4000000;
    struct tm future;
    localtime_r(&fourMillionSeconds,&future);
    
    printf("The date is %d-%d-%d \n", future.tm_mday, (future.tm_mon +1), (future.tm_year + 1900));
    
    
    return 0;
}

