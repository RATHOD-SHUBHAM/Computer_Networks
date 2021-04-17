//
// Created by SHUBHAM RATHOD on 6/20/20.
//

#include "Client.h"
void error( char *msg){
    perror(msg);
    exit(1);
}

int main(int argc,char *argv[]){
    int sockfd,portno,serverLength,readmsg,writemsg;

    struct sockaddr_in serv_addr,cliaddr;
    struct hostent *server;

    char buffer[1024];

    if(argc != 3){
        fprintf(stderr,"usage %s hostname port \n");
        exit(1);
    }


    //step 1 :
    // Create a socket
    sockfd = socket(AF_INET, SOCK_DGRAM, 0);

    if(sockfd < 0){
        error("Error while connecting to socket");
    }


    //step 2 :
    // saving my port number
    portno = atoi(argv[2]);

    serv_addr.sin_family = AF_INET;


    // step 3 :
    server = gethostbyname(argv[1]);

    if(server == 0){
        fprintf(stderr,"ERROR, no such host\n");
        exit(1);
    }


    // step 4 :
    // clearing the server structure using bzero() function
//    bzero( (char *) &serv_addr, sizeof(serv_addr) );

    //step 5 :
    // performing bcopy()

    bcopy( (char *)server -> h_addr, (char *)&serv_addr.sin_addr.s_addr,server->h_length );
    serv_addr.sin_port = htons( portno );
//    serv_addr.sin_port = htons( atoi(argv[2]) );


    serverLength = sizeof(struct sockaddr_in);

    printf("please enter your message:  ");


    // step 6:
    // read and write  message

    bzero(buffer,1024);
    fgets(buffer,1023,stdin);
    readmsg = sendto(sockfd,buffer,1024,0,&serv_addr,serverLength);
    if(readmsg < 0){
        error("Send to message failed");
    }


    writemsg = recvfrom(sockfd,buffer,256,0,&cliaddr,&serverLength);
    if(writemsg < 0){
        error("could not wrote into buffer");
    }

    write(1,"got Acknowledgment: ",12);
    write(1,buffer,writemsg);

}