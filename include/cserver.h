#ifndef _CSERVER_H
#define _CSERVER_H
#include <netdb.h>
struct addrinfo * cserver_create(int socktype, char * p_protocol);
int cserver_socket_bind(struct addrinfo * p_server);
int cserver_info(struct addrinfo * p_server, char * p_host, char * p_service);
#endif
