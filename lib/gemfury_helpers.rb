require "gemfury_helpers/version"

require "bundler"

module GemfuryHelpers
  class GemHelper < Bundler::GemHelper
    def install
      desc "Build #{name}-#{version}.gem into the pkg directory"
      task 'build' do
        build_gem
      end

      desc "Build and install #{name}-#{version}.gem into system gems"
      task 'install' do
        install_gem
      end

      desc "Create tag #{version_tag} and build and push #{name}-#{version}.gem to Gemfury"
      task 'release' do
        release_gem
      end

      GemHelper.instance = self
    end

    def rubygem_push(path)
      sh("fury push '#{path}'")
      Bundler.ui.confirm "Pushed #{name} #{version} to Gemfury"
    end
  end
end
