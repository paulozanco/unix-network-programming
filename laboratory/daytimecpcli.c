/* Copyright 2018 Paulo Zanco */

#include "./zanco.h"

#define MAXLINE 4096 /* max text line length */

int main(int argc, char *argv[]) {
  int sockfd, n;
  char recvline[MAXLINE + 1];

  struct sockaddr_in servaddr;

  if (argc != 2)
    err_quit("usage: prog <IPaddress>");

  if ( (sockfd = socket(AF_INET, SOCK_STREAM, 0)) < 0)
    err_sys("socket error");

  bzero(&servaddr, sizeof(servaddr));

  servaddr.sin_family = AF_INET;
  servaddr.sin_port = htons(13);

  if (inet_pton(AF_INET, argv[1], &servaddr.sin_addr) <= 0)
    err_quit("inet_pton error for %s", argv[1]);
  
  exit(0);
}

