#ifndef BTZ_UTIL_h
#define BTZ_UTIL_h


class BtzUtil{

	typedef union {
		double d;
		char bytes[sizeof(double)];
	} CONVERT_DOUBLE;

	typedef union {
		float f;
		char bytes[sizeof(float)];
	}CONVERT_FLOAT;

public:
	int Convert4ByteToInt(char *byteArray);
	char* ConvertLongTo4ByteChar(long *value);
	char* ConvertIntTo2ByteChar(int *value);
	int Convert2BytesToInt(char *byteArray);
	long Convert4BytesToLong(char *byteArray);
	char GetBitB(char *value,unsigned char bitField);


};


#endif
