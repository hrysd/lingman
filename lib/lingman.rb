require 'net/http'
require "lingman/bot"
require "lingman/version"

module Lingman
  def self.bot(&block)
    Lingman::Bot.new(&block)
  end
end
