//
// Created by SHUBHAM RATHOD on 6/20/20.
//


#include "Server.h"

void error(char *msg){
    perror(msg);
    exit(1);
}

int main(int argc, char *argv[]){

    int sockfd,ServerLength,port,clientLength,readmsg,writemsg,n;

    struct sockaddr_in servaddr,cliaddr;

    char buffer[1024];

    if(argc < 2){
        fprintf(stderr,"Error, No port Provided");
    }

    sockfd = socket(AF_INET, SOCK_DGRAM, 0);
    if(sockfd < 0){
        error("Could not open the socket ");
    }

    // step 2 : clear the buffer and
    ServerLength = sizeof(servaddr);
    bzero(&servaddr,ServerLength);
//    port = atoi(argv[1]);

    // step 3 :
    servaddr.sin_family    = AF_INET; // IPv4
    servaddr.sin_addr.s_addr = INADDR_ANY;
//    servaddr.sin_port = htons(port);
    servaddr.sin_port = htons( atoi(argv[1]) );


    //step 4 :
    // Bind the socket with the server address
    if(bind(sockfd,(struct sockaddr *)&servaddr,ServerLength)<0){
        error("Binding didnot happen");
    }


    //step 5 :

    clientLength = sizeof(struct sockaddr_in);

    while (1){
        writemsg = recvfrom(sockfd,buffer,1024,0,(struct sockaddr*)&cliaddr,&clientLength);
        if(writemsg < 0){
            error("No message was received from client");
        }
        write(1,"DataGram Received : ",21);
        write(1,buffer,21);

        readmsg = sendto(sockfd,"Got your Message \n ",1024,0,(struct sockaddr*)&cliaddr,&clientLength);

        if(readmsg < 0){
            error("Couldnot send a message");
        }
    }

}