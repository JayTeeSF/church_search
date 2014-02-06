require_relative "twitter_client"
module ChurchSearch
  class News
    def self.overhear(topic, options={})
      new(options.delete(:client_module), options).overhear(topic)
    end

    attr_accessor :search_options
    def initialize(client_module=nil, options={})
      @user = options[:user]
      @pass = options[:pass]
      @search_options = options[:search_options] || {}
      extend client_module || TwitterClient
      @buffer = options[:buffer] || Hash.new {|h,k| h[k] = Hash.new(&h.default_proc) }
    end


    def overhear(topic)
      skip_previously_seen_messages_for(topic)
      client.search(topic, search_options)
    end

    protected

    def clear(topic)
      @buffer[topic].clear
    end

    def since_id(topic)
      _since_id = 0
      if @buffer[topic] && @buffer[topic].size > 0
        _since_id = @buffer[topic].last.id
      end
      _since_id
    end

    def skip_previously_seen_messages_for(topic)
      @search_options[:since_id] = since_id(topic)
    end

  end
end
