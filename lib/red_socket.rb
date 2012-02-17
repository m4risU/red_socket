require "red_socket/version"
require "eventmachine"
require "em-http"

module RedSocket
  class Base

    def self.api_key
      @@api_key
    end

    def self.api_key=(value)
      @@api_key = value
    end

    def self.account_id
      @@account_id
    end

    def self.account_id=(value)
      @@account_id = value
    end

    def self.api_secret
      @@api_secret
    end

    def self.api_secret=(value)
      @@api_secret = value
    end

    def self.configure
      yield self
      self
    end

    def self.notify(channel, event="notification", message="")
      ::EventMachine.run {
        http = ::EventMachine::HttpRequest.
            new("http://#{account_id}.subscriptions.dev/api/messages.json").
            post :body =>
                     {
                         'api_key' => api_key,
                         'channel' => channel,
                         'event' => event,
                         'message' => message
                     }
        http.errback { p 'Uh oh'; EM.stop }
        http.callback {
          p http.response_header.status
          p http.response_header
          p http.response

          EventMachine.stop
        }
      }
    end
  end
end

