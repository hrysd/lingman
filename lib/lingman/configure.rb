module Lingman
  module Configure
    def set(*options)
      raise ArgumentError if options.size > 3
      config.merge!(options[0] => options[1])
    end

    def config
      @config ||= {}
    end
  end
end
