//
//  main.c
//  Degrees
//
//  Created by Iván González Aguilar on 7/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

static float lastTemperature = 50.0;

float farenheitFromCelcius(float cel){
    lastTemperature = cel;
    float fahr = cel * 1.8 + 32;
    printf("%f Celcius is %f Fahrenheit\n", cel, fahr);
    return fahr;
}

int main(int argc, const char * argv[])
{
    float freezeInC = 0;
    float freezeInF = farenheitFromCelcius(freezeInC);
    printf("Water freezes at %f degrees Fahrenheit \n", freezeInF);
    printf("The last temperature converted was %f \n", lastTemperature);
    return EXIT_SUCCESS;
}

