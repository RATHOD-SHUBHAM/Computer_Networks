# UDP


## Steps on Server Side : 


Create a socket.
Save the port Number.
Bind the server address and the socket.
Perform Read and write using recvfrom() and sendto().


## Client side : 

Create a socket. 
Save the port Number.
getHostName.
Bcopy -> copy server values.
Read and Write the message.


## Execution : 

	Open Server.c and Client.c


## Compile : 

	cc  Client.c  -o  Client.out	
	cc  Server.c  -o  Server.out


## Run :

	. / Server.out port number
	
	. / Client.out localhost port number
