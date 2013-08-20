require "gemfury_helpers/version"
require "bundler"

module GemfuryHelpers
  class GemHelper < Bundler::GemHelper
    def self.install_tasks(opts={})
      dir = opts[:dir] || Dir.pwd
      self.new(dir, opts[:name], opts[:account]).install
    end

    attr_reader :account

    def initialize(dir, name, account)
      super(dir, name)
      @account = account
    end

    def rubygem_push(path)
      sh push_cmd(path)
      Bundler.ui.confirm "Pushed #{name} #{version} to Gemfury"
    end

    def push_cmd(path)
      cmd = "fury push '#{path}'"
      account ? "#{cmd} --as #{account}" : cmd
    end
  end
end