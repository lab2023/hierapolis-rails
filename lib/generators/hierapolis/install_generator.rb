require 'rails/generators'
require 'rails/generators/base'
module Hierapolis
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      desc "Copy hierapolis generators"
      source_root File.expand_path('../templates', __FILE__)

      def copy_scaffold_template
        directory 'haml', 'lib/templates/haml'
        directory 'rails', 'lib/templates/rails'
        directory 'generators', 'lib/generators'
      end

      def copy_layouts
        directory 'layouts/hq', 'app/views/layouts/hq'
        directory 'layouts/hq/partials', 'app/views/layouts/hq/partials'

        directory 'layouts/partials', 'app/views/layouts/partials'
        copy_file 'layouts/login.html.haml', 'app/views/layouts/login.html.haml'
      end

      def create_hq_assets
        directory 'assets/javascripts/hq', 'app/assets/javascripts/hq'
        directory 'assets/stylesheets/hq', 'app/assets/stylesheets/hq'
      end
    end
  end
end