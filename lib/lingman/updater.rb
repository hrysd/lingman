require 'digest/sha1'
require 'net/http'

module Lingman
  module Updater
    def self.update(bot_id, room_id, secret, text)
      verifier = Digest::SHA1.hexdigest(bot_id + secret)

      Net::HTTP.start('lingr.com', 80) do |http|
        http.get("/api/room/say?bot=#{bot_id}&bot_verifier=#{verifier}&room=#{room_id}&text=#{URI.escape(text)}")
      end
    end

    def update(text)
      self.update(config[:bot_id], config[:room_id], config[:secret], text)
    end
  end
end
