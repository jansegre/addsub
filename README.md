Small demo of RPC for Distributed Systems class.

    make

Run server:

    ./server


Connect to server, if running locally:

    ./client localhost 100 200

Should output:

    100 + 200 = 300
    100 - 200 = -100

Don't forget to close the server when you're done:

    killall server
