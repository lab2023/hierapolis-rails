require 'rails/generators/erb/scaffold/scaffold_generator'

module Haml
  module Generators
    class ScaffoldGenerator < Erb::Generators::ScaffoldGenerator
      source_root File.expand_path("../templates", __FILE__)

      def copy_view_files
        available_views.each do |view|
          filename = filename_with_extensions(view)
          if filename == "_#{singular_table_name}.html.haml"
            #create_file File.join("app/views", controller_file_path, "_#{singular_table_name}.html.haml") do
            #  hostname = ask("What is the virtual hostname I should use?")
            #  "vhost.name = #{hostname}"
            #end

            template 'single_entry.html.haml', File.join("app/views", controller_file_path, filename)
          else
            template "#{view}.html.haml", File.join("app/views", controller_file_path, filename)
          end
        end
      end

      hook_for :form_builder, :as => :scaffold

      def copy_form_file
        if options[:form_builder].nil?
          filename = filename_with_extensions("_form")
          template "_form.html.haml", File.join("app/views", controller_file_path, filename)
        end
      end

      protected

      def available_views
        file = "_#{singular_table_name}"
        list = %w(index edit show new _list _blank _filters)
        list << file
        list
      end

      def handler
        :haml
      end

    end
  end
end