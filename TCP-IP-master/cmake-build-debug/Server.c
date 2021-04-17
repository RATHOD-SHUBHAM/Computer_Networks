//
// Created by SHUBHAM RATHOD on 6/19/20.
//

#include "Server.h"

//function to print error message.
// message is basically passed as a pointer
// perror will print the standard error
// exit(1) --> exitting from program because of abnormal termination
void error(char *msg){
    perror(msg);
    exit(1);
}


// am using argc and argv because ill be using command line to pass my argument
int main(int argc, char *argv[]){

    int sockfd,portno, client_length,newsockfd, valread, valwrite;

    //    struct sockaddr_in address;
    // this is a inbuilt structure
    struct sockaddr_in serv_addr,client_address;
    char buffer[256];

    //step 1 :
    if(argc < 2){
        fprintf(stderr,"ERROR,no port provided \n");
        exit(1);
    }

    // step 2 :
    // socket creation
    // sockfd will hold all the details
    //int sockfd = socket(domain, type, protocol)
    sockfd = socket(AF_INET,SOCK_STREAM,0);

    if(sockfd < 0){
        error("ERROR while opening socket");
    }


    // step 3 :
    // clearing the server structure using bzero() function
    bzero( (char *) &serv_addr, sizeof(serv_addr) );

    //step 4 :
    // saving my port number
    portno = atoi(argv[1]);


    //step 5 :
    // fill in the structure
    serv_addr.sin_family = AF_INET;
    serv_addr.sin_addr.s_addr = INADDR_ANY;
    serv_addr.sin_port = htons( portno );


    //step 6 :
    // bind the server address in the structure and the socket

    if( bind(sockfd, (struct sockaddr *) &serv_addr,sizeof(serv_addr)) < 0 ){
        error("Error, Could not bind the structure and socket");
    }

    // step 7 :
    listen(sockfd, 5);


    client_length = sizeof(client_address);


    // step 8 :
    // when we accept , we create a new socket for client
    newsockfd = accept(sockfd, ( struct sockaddr * ) &client_address , &client_length );

    if(newsockfd < 0){
        error("Error Could not accept the first connection");
    }


    // step 9 :
    // clearing the buffer using bzero() function
    bzero( (char *) &serv_addr, sizeof(serv_addr) );


    // Step 10 :
    // client_address will have all vales which will be stored in new sock fd

    valread = read(newsockfd,buffer,256);

    if(valread < 0){
        error("Error Nothing has been read into the buffer");
    }

    //step 11 :
    printf("Message the client has sent : %s\n",buffer);

    //step 12 :
    // send message to the client
    valwrite = write(newsockfd,"got your message",16);

    if(valwrite < 0){
        error("Error while sending message");
    }

    return 0;
}