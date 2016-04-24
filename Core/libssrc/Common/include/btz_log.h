/*
 * btz_log.h
 *
 *  Created on: 23.04.2016
 *      Author: Jonas
 */

#ifndef INCLUDE_BTZ_LOG_H_
#define INCLUDE_BTZ_LOG_H_

#define LOG_CRITICAL 6
#define LOG_ERROR 5
#define LOG_WARNING 4
#define LOG_INFO 3
#define LOG_DEBUG 2

#include <mutex>

class BtzLogger {
public:
	BtzLogger(char *name, int defaultLogLevel);
	void Log(char *msg);
	void Log(char *msg, int logLevel);

	int SetDefaultLogLevel(int logLevel);

private:
	int _defaultLogLevel;
	BtzLog *_baseLog;
	char *_name;
};

class BtzLog {
public:
	BtzLogger* CreateLogger(char *name);
	BtzLogger* CreateLogger(char *name,int defaultLogLevel);

	void GenLog(char *name,int logLevel,char *msg);
private:
	char *getCurrentTimeStr();
	std::mutex _printLck;
};



#endif /* INCLUDE_BTZ_LOG_H_ */
