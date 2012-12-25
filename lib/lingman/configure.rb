require 'digest/sha1'

module Lingman
  module Configure
    def set(*options)
      raise ArgumentError if options.size > 3
      config.merge!(options[0] => options[1])
    end

    def config
      @config ||= {}
    end

    def verifier
      Digest::SHA1.hexdigest(config[:bot_id]+ config[:secret])
    end
  end
end
