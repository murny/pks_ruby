# frozen_string_literal: true

require "test_helper"

class PksRubyTest < Test::Unit::TestCase
  test "VERSION" do
    assert do
      ::PksRuby.const_defined?(:VERSION)
    end
  end

  test "something useful" do
    assert_equal("expected", "actual")
  end
end
