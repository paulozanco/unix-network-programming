/* Copyright 2019 - Paulo Zanco */

#ifndef LABORATORY_ZANCO_H_
#define LABORATORY_ZANCO_H_

#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <string.h>
#include <strings.h>

#include <arpa/inet.h>
#include <netinet/in.h>
#include <sys/socket.h>
#include <sys/types.h>

#define MAXLINE 4096

void err_quit(const char *, ...);
void err_sys(const char*, ...);


#endif  // LABORATORY_ZANCO_H_

