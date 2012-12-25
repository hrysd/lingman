require "lingman/bot"
require "lingman/updater"
require "lingman/version"

module Lingman
  def self.bot(&block)
    Lingman::Bot.new(&block)
  end
end
