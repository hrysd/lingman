require 'net/http'
require 'lingman/configure'

module Lingman
  class Bot
    include Configure

    def initialize(&block)
      instance_eval(&block)
    end

    def update(text)
      Net::HTTP.start('lingr.com', 80) do |http|
        http.get("/api/room/say?bot=#{config[:bot_id]}&bot_verifier=#{verifier}&room=#{config[:room_id]}&text=#{URI.escape(text)}")
      end
    end
  end
end
