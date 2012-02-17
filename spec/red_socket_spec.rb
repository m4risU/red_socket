require 'spec_helper'

describe RedSocket do

  it "has configuration items" do
    RedSocket::RedSocket.respond_to?(:account_id).should be_true
    RedSocket::RedSocket.respond_to?(:api_key).should be_true
    RedSocket::RedSocket.respond_to?(:api_secret).should be_true
  end

  it "can be configured" do
    RedSocket::RedSocket.respond_to?(:configure)
  end

  describe "notify" do
    it "can have one argument for a channel" do
      RedSocket::RedSocket.configure do |config|
        config.account_id = "test"
        config.api_key = "48g9834bf0b7fbve96v96vd97fvsadc"
        config.api_secret = "fb78thg94b35g7b459gbv0438bghv73wbv803wbv80w3bv803w"
      end
      RedSocket::RedSocket.notify("channel")
    end
  end
end