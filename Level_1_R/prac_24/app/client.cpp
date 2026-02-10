#include "header.hpp"
#include <arpa/inet.h>
#include <sys/wait.h>
#include <cstring>
using namespace std;

int main()
{
	#ifdef TCP
	cout<<"IPv4 TCP client \n";
	#else
	cout<<"IPv4 UDP client \n";
	#endif

	#ifdef TCP
	int clientDesc= socket(AF_INET, SOCK_STREAM, 0);
	#else
	int clientDesc= socket(AF_INET, SOCK_DGRAM, 0);
	#endif

	sockaddr_in clientAdd ;
	clientAdd.sin_port = htons(8080);
	clientAdd.sin_family = AF_INET;
	clientAdd.sin_addr.s_addr = inet_addr("127.0.0.1");

	connect(clientDesc,(struct sockaddr *)(&clientAdd), sizeof(clientAdd));

	DataStructure * ptr = new DataStructure();

	ptr->a=234;
	ptr->b=23.23232332f;
	strcpy(ptr->c, "Akshaya Baalaji S ");

	#ifdef TCP
	send(clientDesc, ptr, sizeof(*ptr),0);
	#else
	socklen_t sockk = sizeof(clientAdd);
	sendto(clientDesc, ptr, sizeof(*ptr),0, (struct sockaddr *)(&clientAdd), sockk);
	#endif
}