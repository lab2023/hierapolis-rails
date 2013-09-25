require "hierapolis/rails/version"

module Hierapolis
  module Rails
    class Engine < ::Rails::Engine
      I18n.load_path << Dir[File.join(File.expand_path(File.dirname(__FILE__) + '/../locales'), '*.yml')]
      I18n.load_path.flatten!
    end
  end
end
