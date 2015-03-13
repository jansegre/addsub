.PHONY: all clean

all: server client

server: addsub.h server.c addsub_svc.o addsub_xdr.o
	$(CC) $(CFLAGS) -o server server.c addsub_svc.c addsub_xdr.c

client: addsub.h client.c addsub_clnt.o addsub_xdr.o
	$(CC) $(CFLAGS) -o client client.c addsub_clnt.c addsub_xdr.c

%.o: %.c addsub.h
	$(CC) -c $(CFLAGS) -o $@ $<

addsub.h:
	rpcgen -C addsub.x

clean:
	rm -f *.o server client addsub.h
