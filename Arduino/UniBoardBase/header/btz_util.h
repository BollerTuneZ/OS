#ifndef BTZ_UTIL_h
#define BTZ_UTIL_h


class BtzUtil{

public:
	int Convert4ByteToInt(char *byteArray);
	char* ConvertLongTo4ByteChar(long *value);
	char* ConvertIntTo2ByteChar(int *value);
	int Convert2BytesToInt(char *byteArray);
	long Convert4BytesToLong(char *byteArray);
	char GetBitB(char *value, char bitField);
	void SetBitB(char *out,char bitField, char value);

	typedef union {
		double d;
		char bytes[sizeof(double)];
	} CONVERT_DOUBLE;

	typedef union {
		float f;
		char bytes[sizeof(float)];
	}CONVERT_FLOAT;

};


#endif
