require "gemfury_helpers/version"
require "bundler"

module GemfuryHelpers
  class GemHelper < Bundler::GemHelper
    def rubygem_push(path)
      sh("fury push '#{path}'")
      Bundler.ui.confirm "Pushed #{name} #{version} to Gemfury"
    end
  end
end
