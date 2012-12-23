require 'net/http'
require "jizou/bot"
require "jizou/version"

module Jizou
  def self.bot(&block)
    Jizou::Bot.new(&block)
  end
end
