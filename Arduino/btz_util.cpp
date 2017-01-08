#include "btz_util.h"


char buf4Byte[4];
char buf2Byte[2];


int BtzUtil::Convert4ByteToInt(char *byteArray)
{
	return *((int *) byteArray);
}

char* BtzUtil::ConvertLongTo4ByteChar(long *value)
{
	buf4Byte[0] = *value & 0xff;
	buf4Byte[1] = (*value>>8)  & 0xff;
	buf4Byte[2] = (*value>>16) & 0xff;
	buf4Byte[3] = (*value>>24) & 0xff;
	return buf4Byte;
}

char* BtzUtil::ConvertIntTo2ByteChar(int *value)
{
	buf2Byte[0] = *value & 0xff;
	buf2Byte[1] = (*value>>8) & 0xff;
	return buf2Byte;
}

int BtzUtil::Convert2BytesToInt(char *byteArray)
{
	int val = 0;
	val = (val | byteArray[1]) << 8;
	val = (val | byteArray[0]);
	return val;
}
long BtzUtil::Convert4BytesToLong(char *byteArray)
{
	long val = 0;
	val = (val | byteArray[3]) << 8;
	val = (val | byteArray[2]) << 8;
	val = (val | byteArray[1]) << 8;
	val = (val | byteArray[0]);
	return val;
}

char BtzUtil::GetBitFromByte(char *value,unsigned char bitField){

	if(bitField > 7)
	{
		//TODO must be error code
		return 0x3;
	}
	return ((*value & (1 << bitField)) >> bitField);
}
