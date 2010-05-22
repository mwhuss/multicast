module Multicast
  class Message
    attr_accessor :message, :hostname, :ip, :port
    
    def initialize(opts={})
      @message    = opts[:message]
      @hostname   = opts[:hostname]
      @ip         = opts[:ip]
      @port   = opts[:port]
    end
    
  end
end