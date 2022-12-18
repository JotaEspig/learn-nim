import std/net


proc run*(ip: string = "0.0.0.0", port: uint16 = 5050) =
    var buffer: string
    let sock = newSocket()
    sock.bindAddr(Port(port), ip)
    sock.listen()
    var client: Socket

    block server:
        while true:
            sock.accept(client)
            while true:
                buffer = ""
                client.readLine(buffer)
                case buffer
                of "exit":
                    client.close()
                    break
                of "shutdown":
                    client.close()
                    break server

                let clientAddr = client.getLocalAddr()
                echo "\""&clientAddr[0]&"\": " & buffer
    
    sock.close()
