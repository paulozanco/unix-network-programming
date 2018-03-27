/* Copyright 2018 Paulo Zanco */

#include <netinet/in.h>
#include "./zanco.h"

#define MAXLINE 4096 /* max text line length */

int main(int argc, char *argv[]) {
  int sockfd, n;
  char recvline[MAXLINE + 1];

  struct sockaddr_in servaddr;

  if (argc != 2)
    err_quit("usage: prog <IPaddress>");
  return 0;
}
