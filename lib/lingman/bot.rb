require 'lingman/configure'
require 'lingman/updater'

module Lingman
  class Bot
    include Configure
    include Updater

    def initialize(&block)
      instance_eval(&block)
    end
  end
end
