require 'digest/sha1'

module Jizou
  module Configure
    def set(option)
      config.merge!(option)
    end

    def config
      @config ||= {}
    end

    def verifier
      Digest::SHA1.hexdigest(config[:bot_id]+ config[:secret])
    end
  end
end
