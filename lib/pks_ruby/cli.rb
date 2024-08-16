# frozen_string_literal: true

require "singleton"

module PksRuby
  class Cli
    include Singleton

    def initialize
      # TODO:
    end

    def parse(argv = ARGV)
      # TODO: Implement command line parsing
    end

    def run
      PksRuby.greet
    end
  end
end
