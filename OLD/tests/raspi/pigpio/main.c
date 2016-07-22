/*
 * main.cpp
 *
 *  Created on: 23.03.2016
 *      Author: Jonas
 */
/*
   pulse.c

   gcc -o pulse pulse.c -lpigpio -lrt -lpthread

   sudo ./pulse
*/

#include <stdio.h>
#include <unistd.h>
#include <pigpio.h>

int main(int argc, char *argv[])
{
   double start;

   if (gpioInitialise() < 0)
   {
      fprintf(stderr, "pigpio initialisation failed\n");
      return 1;
   }

   gpioSetMode(17, PI_OUTPUT);


      /* Mirror GPIO24 from GPIO23 */
   int i;
   for(i=0;i<25;i++)
   {
	      gpioWrite(17, 1);
	      usleep(500*1000);
	      gpioWrite(17, 0);
	      usleep(500*1000);
   }

   /* Stop DMA, release resources */
   gpioTerminate();

   return 0;
}
