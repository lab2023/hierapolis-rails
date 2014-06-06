require 'rails/generators'
require 'rails/generators/base'
module Hierapolis
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      desc "Copy hierapolis generators"
      source_root File.expand_path('../templates', __FILE__)

      def copy_layouts
        directory 'layouts/hierapolis', 'app/views/layouts/hierapolis'
        directory 'layouts/hierapolis/partials', 'app/views/layouts/hierapolis/partials'
        directory 'views', 'app/views/hierapolis'
        copy_file 'contollers/hierapolis_controller.rb', 'app/controllers/hierapolis_controller.rb'
        inject_into_file 'config/routes.rb', :before => 'end' do <<-RUBY

  resources :hierapolis, only: [:index, :dashboard, :tables, :forms, :forgot_password] do
    get :dashboard, on: :collection
    get :tables, on: :collection
    get :forms, on: :collection
    get :forgot_password, on: :collection
  end

        RUBY
        end
      end
    end
  end
end