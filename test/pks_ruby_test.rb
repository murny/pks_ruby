# frozen_string_literal: true

require "test_helper"

class PksRubyTest < Minitest::Test
  def test_it_has_a_version
    assert ::PksRuby.const_defined?(:VERSION)
  end

  def test_it_does_something_useful
    out, _ = capture_subprocess_io do
      PksRuby.greet
    end
    assert_match(/👋 Hello! Welcome to packs 📦 🔥 🎉 🌈. This tool is under construction./, out)
  end
end
