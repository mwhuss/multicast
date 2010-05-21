module Multicast
  class Listener
    attr_accessor :group, :port
    
    def initialize(opts={})
      @group  = opts[:group]
      @port   = opts[:port]
    end
    
    def send(message)
      
      begin
        socket = UDPSocket.open
        socket.setsockopt(Socket::IPPROTO_IP, Socket::IP_TTL, [1].pack('i'))
        socket.send(message, 0, MULTICAST_ADDR, PORT)
      ensure
        socket.close 
      end
    
  end
end