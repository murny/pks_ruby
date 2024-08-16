# frozen_string_literal: true

require_relative "pks_ruby/version"
require_relative "pks_ruby/pks_ruby"
require_relative "pks_ruby/cli"

module PksRuby
  class Error < StandardError; end
  # Your code goes here...

  def self.greet
    hello # calls underlying rust pks greet function just as a test
  end
end
