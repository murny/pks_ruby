# frozen_string_literal: true

require "bundler/gem_tasks"
require "rake/testtask"

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList["test/**/*_test.rb"]
end

require "standard/rake"

require "rb_sys/extensiontask"

task build: :compile

GEMSPEC = Gem::Specification.load("pks_ruby.gemspec")

RbSys::ExtensionTask.new("pks_ruby", GEMSPEC) do |ext|
  ext.lib_dir = "lib/pks_ruby"
end

task default: %i[compile test standard]
