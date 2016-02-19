#include "btz_util.h"

extern int Convert4ByteToInt(char *byteArray)
{
	return *((int *) byteArray);
}

extern char* ConvertIntTo4ByteChar(int value)
{
	char buf[4];
	buf[0] = value & 0xff;
    buf[1] = (value>>8)  & 0xff;
    buf[2] = (value>>16) & 0xff;
    buf[3] = (value>>24) & 0xff;
	return buf;
}