//
// Created by SHUBHAM RATHOD on 6/19/20.
//


#include "Client.h"
void error(char* msg){
    perror(msg);
    exit(1);
}


int main(int argc,char* argv[]){


    int portno,sockfd,varwrite,valread;

    char buffer[256];

    struct sockaddr_in serv_addr;
    struct hostent *server;

    //step 1 :
    if(argc < 3){
        fprintf(stderr,"usage %s hostname port \n",argv[0]);
        exit(1);
    }

    //step 2 :
    // saving my port number
    portno = atoi(argv[2]);


    // step 3 :
    // socket creation
    // sockfd will hold all the details
    //int sockfd = socket(domain, type, protocol)
    sockfd = socket(AF_INET,SOCK_STREAM,0);

    if(sockfd < 0){
        error("ERROR while opening socket");
    }

    // step 4 :
    server = gethostbyname(argv[1]);

    if(server == NULL){
        fprintf(stderr,"ERROR, no such host\n");
        exit(1);
    }

    // step 5 :
    // clearing the server structure using bzero() function
    bzero( (char *) &serv_addr, sizeof(serv_addr) );

    serv_addr.sin_family = AF_INET;
    //step 6 :
    bcopy( (char *)server -> h_addr, (char *)&serv_addr.sin_addr.s_addr,server->h_length );
    serv_addr.sin_port = htons( portno );


    //step 7 :
    //connection with socket

    if( connect((sockfd),&serv_addr,sizeof(serv_addr)) < 0 ){
        error("Error while connecting");
        exit(1);
    }


    //step 8 :
    printf(" Please Enter the Message : ");
    bzero(buffer,256);
    fgets(buffer,255,stdin);


    //step 9 :
    // write and read
    varwrite = write(sockfd,buffer,strlen(buffer));
    if(varwrite < 0 ){
        error("Error writing to the socket");
    }

    bzero(buffer,256);
    valread = read(sockfd,buffer,256);
    if(valread < 0 ){
        error("Error reading from socket");
    }

    printf("%s \n",buffer);

    return 0;
}