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
        #puts "MSG: #{msg} from #{info[2]} (#{info[3]})/#{info[1]} len #{msg.size}"
        #puts "---> [#{info[2]} / #{info[3]}:#{info[1]} (#{msg.size} bytes)] #{msg}"
        yield(msg, info)

        rescue Interrupt
          sock.close
          puts "\n---> Exiting" 
          exit
        end

      end
    end
    
  end
end