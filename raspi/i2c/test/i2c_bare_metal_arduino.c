#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <linux/i2c-dev.h>
#include <sys/ioctl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#define SLAVE_ADDRESS 0x12

void communicate(int);
void write_test(int);
void read_test(int);
/* Suche nach I2C-Adressen */
void scan_i2c_bus(int device)
  {
  int port, res;

  /* Adressbereich 7 Bit */
  for (port = 0; port < 127; port++)
    {
    if (ioctl(device, I2C_SLAVE, port) < 0)
      perror("ioctl() I2C_SLAVE failed\n");
    else
      {
      /* kann gelesen werden? */
      res = i2c_smbus_read_byte(device);
      if (res >= 0)
        printf("i2c chip found at: %x, val = %d\n", port, res);
      }
    }
  }

int main(void)
  {
  int device;
  unsigned long funcs;

  /* Geraetedatei oeffnen */
  printf("Opening device...");
  if ((device = open("/dev/i2c-1", O_RDWR)) < 0)
    {
    perror("open() failed");
    exit (1);
    }
  printf(" OK\n");

  /* Abfragen, ob die I2C-Funktionen da sind */
  if (ioctl(device,I2C_FUNCS,&funcs) < 0)
    {
    perror("ioctl() I2C_FUNCS failed");
    exit (1);
    }

  /* Ergebnis untersuchen */
  if (funcs & I2C_FUNC_I2C)
    printf("I2C\n");
  if (funcs & (I2C_FUNC_SMBUS_BYTE))
    printf("I2C_FUNC_SMBUS_BYTE\n");

  /* und Bus abscannen */
  //scan_i2c_bus(device);
	//communicate(device);
for(;;)
{
	write_test(device);
	usleep(500*1000);
	read_test(device);
}


  return 0;
  }
  
  void communicate(int device)
  {
	
	if (ioctl(device, I2C_SLAVE, SLAVE_ADDRESS) < 0)
	{
		perror("ioctl() I2C_SLAVE failed\n"); 
		return;
	}
	unsigned int sleepTime = 250 * 1000;
	unsigned int sleepTimeLong = 1000 * 1000;
	printf("Reading block data from slave\n");
	int res;
	int x = 10;	
	int counter =0;
	while(x == 10){
		res = i2c_smbus_read_byte(device);
		counter++;
		/*
		__s32 result2 = i2c_smbus_read_word_data(device,0x72);
	
	
		printf("result:%i, result2:%i /count:%i\n",res,result2,counter);
			usleep(sleepTimeLong);
		}
		*/
		printf("Writing 2bytes to slave\n");
		if(counter >= 65000)
		{
			counter = 0;
		}

		unsigned char high = (unsigned char)(counter>>8);
		
		unsigned char low = counter & 0xff;
		
		int err = i2c_smbus_write_word_data(device,0x72,counter);
		printf("err:%i\n",err);
		usleep(sleepTime);
	}
  }

  void write_test(int device)
  {
	  char buf[10];
	  
	  buf[0] = 0xDE;
	  buf[1] = 0xF1;
	  buf[2] = 0xD6;
	  	if (ioctl(device, I2C_SLAVE, SLAVE_ADDRESS) < 0)
	{
		perror("ioctl() I2C_SLAVE failed\n"); 
		return;
	}
	    if (write(device, buf, 3) != 3) {
			printf("Error could not write buffer to slave...\n");
			return;
		}else
		{
			printf("Wrote buffer to slave...\n");
		}
		
  }
  
  void read_test(int device)
  {
	  char buf[2];
	  printf("Reading 2 bytes from slave\n");
	  if(read(device,buf,2) != 2)
	  {
		  printf("could not read from slave\n");
		  return;
	  }
	  printf("Read buf[0]%p, buf[1]%p\n",buf[0],buf[1]);
  }
  