require 'twitter'

module ChurchSearch
  module TwitterClient
    extend self

    def default_options
      {
        consumer_key: SecureSettings::TwitterClient.consumer_key,
        consumer_secret: SecureSettings::TwitterClient.consumer_secret,
      }
    end

    def help
      <<-EOF
      Create your own #{ENV['HOME']}/bin/secure_settings.rb file, e.g.:
      module SecureSettings
        module TwitterClient
          def self.consumer_key; some_key; end
          def self.consumer_secret; some_secret; end
        end
      end
      EOF
    end

    def client
      unless @client
        @client = Twitter::REST::Client.new do |config|
          config.consumer_key    = user
          config.consumer_secret = pass
        end
      end
      @client
    end

    protected

    def user
      unless @user
        @user = default_options[:consumer_key]
      end
      @user
    end

    def pass
      unless @pass
        @pass = default_options[:consumer_secret]
      end
      @pass
    end

  end
end

begin
  require ENV["HOME"] + "/bin/secure_settings.rb"
rescue LoadError
  warn ChurchSearch::TwitterClient.help
end

