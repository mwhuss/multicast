module Multicast
  class Listener
    attr_accessor :group, :port
    
    def initialize(opts={})
      @group  = opts[:group]
      @port   = opts[:port]
    end
    
    def listen(&block)
      
      ip =  IPAddr.new(@group).hton + IPAddr.new("0.0.0.0").hton
      sock = UDPSocket.new
      sock.setsockopt(Socket::IPPROTO_IP, Socket::IP_ADD_MEMBERSHIP, ip)
      sock.bind(Socket::INADDR_ANY, @port)
      
      loop do
        begin
          msg, info = sock.recvfrom(1024)
          message = Message.new(:message => msg, :hostname => info[2], :ip => info[3], :port => info[1])
          yield(message)

        rescue Interrupt
          sock.close
          puts "\n---> Exiting" 
          exit
        end

      end
    end
    
  end
end